# 6.0.3
- updated copy right notice to reflect mit license.

# 6.0.2
- Removed deprecated `Pointer.elementAt`.

# 6.0.1
- removed dependency on collection as causing compatability problems upstream.

# 6.0.0
- Fixed a bug with uname on gnu as the struct wasn't large enough as gnu returns the 'domain' field requiring an extra 65 bytes.
- ugpraded to dart 3.x 
- removed quiver as it pulls in the test packages which causes conflicts with other projects.

# 5.0.0
- fixes #12 ffi error with dart 3.x
This error actually affects any sdk from 2.19 hence the new minimum sdk.
There are no other updates in this release.
- upgraded base sdk to 2.19


# 4.2.0
- support for dart 3.x which appears to require the ffi.Pointer is a non-nullable type.
- added unit test for seteuid checking that a spawned shell inherits the change.
- Fixed a bug when a PosixException was thrown it would often return -1 rather than errno.

# 4.1.0
- BREAKING: change getpwent to return Passwd? as it couldn't be used for its intended purpose to interate across the list of users.
- Added simplifed getUsers method.
- second attempt at fixing the macos gecos npe.

# 4.0.1
- fixed bug on macos where gecos in getpwent can be null.
- moved back to depending on the publish dcli version now that the circular dependecies have been resolved.

# 4.0.0
- Upgraded to ffi 2.0
- Improved the doco and exception message for getpwuid and getpwname.

# 3.1.0
- ADDED: initgroups and getgroups. Added a simple function name for getGroupByGid and getGroups
- ADDED: method setErrno.
- ADDED: uname()
- ADDED: sysinfo()
- Moved getgroups from unistd to grp.dart.
- upgraded to latest dcli version.
- Upgrade Dart & package:ffi to the latest stable versions (2.16)
- grp_test: use "admin" group on macOS
- sysinfo: add missing unused_element to pass analysis
- Set up CI
- pwd_test: replace hard-coded username with $USER
- added tests back in after upgrade dcli to resolve circular dependency.
- Added simplified api name getPassword

# 3.0.0
- BREAKING: Changed Passwd field user_info to userInfo.
- BREAKING: Renamed clear_errno to clearErrno
- applied lint_hard with the objective of making the code more consistent. 
- added additional simplifed names.
- Implemented missing hashCode on a no. of classes.
- commented out opaque thread as causing vc-code performance issues and looks like its not used.
- split mac.dart into smaller 'part of ' files as vscode was having serious performance problems.

# 2.2.3
Thanks to https://github.com/ab36245 for the contribution.
- Fixed stat command on macos 
- Split stat into separate files for simplicity
- Separate ffigen files for linux and mac
- Changed generic ffigen to linux-specific

# 2.2.2
- Added chmod.
- upgraded to dcli 1.14.1

# 2.2.1
- fixed an invalid null check in throwIfErrno

# 2.2.0
- added external statements to Struct members as required by the latest version of ffi.
- Fixes for the stat test.
- renamed stat mode functions isUserXXX to isOwnerXXX. Add unit tests for same.
- stat.dart added missing initialisation for mode.

# 2.1.2
Added missing export for simplified.dart

# 2.1.1
Added simplified library with method getUserNameByUid

# 2.1.0
Added stat function.

# 2.0.0
First stable nnbd release.

# 2.0.0-nullsafety.1
removed dcli as a dependency to avoid circular dependecies.
First nullsafety release.

# 1.3.4
reverted Opaque to Struct as not supported under 2.10.

# 1.3.3
Updated empty structs to use Opaque

# 1.3.2
improved getlogin errors. 
Fixed bugs where we were comparing c null to the dart null which is not the same thing.

# 1.3.1
Added method to check if posix is supported.

# 1.3.0
Fixed chown. Now throws an exception if an error is returned rather then returning -1;

# 1.2.0
Added grp.h to allow access to posix groups.

# 1.1.0
Added passwd methods to library.
Applied consistent naming convention to entry points that expose native types.

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

