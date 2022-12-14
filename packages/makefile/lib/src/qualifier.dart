import 'package:pure/pure.dart';

extension Qualifier on Never {
  static RegExp _orPattern(List<String> parts) =>
      parts.map(RegExp.escape).join('|').pipe(RegExp.new);

  static const String _include = 'include';

  static const Pattern comment = '#';
  static final Pattern variable = _orPattern(['=', '?=', ':=', '+=']);
  static const Pattern target = ':';
  static final Pattern include = _orPattern(const [
    _include,
    '-$_include',
    's$_include',
  ]);
  static const Pattern conditionalIfeq = 'ifeq';
  static const Pattern conditionalElse = 'else';
  static const Pattern conditionalEndif = 'endif';
}
