# 1.0.0
testing for setuid/setgid
Added dart wrappers for a number of posix methods so users don't need to play with ffi internals.
Fixed bug where the ctor args where not setting the fields.
re-organised method location.
changed path to lookup function.
Cleaned up types.
Corrected type for method.
Added test for getcwd.

# 0.4.1
Converted most of the unistd.dart methods to dart types. Now need to see If we can actually call any of the methods. generated code for strings.h no conversions as yet.

# 0.4.0
Work on changing all types sent and returned from the api to dart types. Also changed the methods to all be global functions.

Still a chunk more work to do to complete the conversion of all data types.
Next step will be to create some unit test to prove the basic process is working.

# 0.3.0
Some very early work on bindings to unistd.h. Started by generating bindings using ffigen and then begun cleanup with the intent that all passed/returned types are native Dart types.

# 0.2.0
generated code using ffigen.

# 0.1.0
Initial commit

