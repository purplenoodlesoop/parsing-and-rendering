import 'dart:async';

typedef Translator<S, T> = void Function(S event, EventSink<T> sink);

abstract class RedirectingStreamTransformer<S, T>
    extends StreamTransformerBase<S, T> {
  const RedirectingStreamTransformer();

  Translator<S, T> createTranslator();

  @override
  Stream<T> bind(Stream<S> stream) {
    final translator = createTranslator();
    StreamSubscription<S>? subscription;

    void onPause() {
      subscription?.pause();
    }

    void onResume() {
      subscription?.resume();
    }

    final controller = stream.isBroadcast
        ? StreamController<T>.broadcast(sync: true)
        : StreamController<T>(
            sync: true,
            onPause: onPause,
            onResume: onResume,
          );

    Future<void> onCancel() async {
      await subscription?.cancel();
      await controller.close();
    }

    void listener(S event) {
      translator(event, controller);
    }

    void onListen() {
      subscription = stream.listen(
        listener,
        onDone: onCancel,
        onError: controller.addError,
      );
    }

    controller
      ..onListen = onListen
      ..onCancel = onCancel;

    return controller.stream;
  }
}
