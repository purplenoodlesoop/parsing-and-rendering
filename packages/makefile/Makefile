.PHONY: hello helloWorldAndJeff

world = World

# This is a variable with a comment attached
variable := value

-include one two three

# Another attached comment
hello:
	@echo "Hello"
	@echo ","
	@echo world

ifeq (true)        
    @echo '1'
else
    @echo '2'
endif

splash: pub-get
	@echo "* Generating Splash screens *"
	@fvm flutter pub run flutter_native_splash:create

# Multi
# Line
# Comment
helloWorldAndJeff: hello
	@echo "and Jeff"

