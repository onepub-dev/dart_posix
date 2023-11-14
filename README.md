Provides Dart access to the POSIX api for MacOS and Linux system.


```dart

import 'package:posix/posix.dart';

int uid = getuid();

```


# Contributing

## Dart types only
The api should only expose dart types. Any C types MUST be translated to dart types before being returned.

## setters and getters

One of the first questsion is to whether we should use Dart's settings and getters:

e.g.

```dart

// getuid
int uid = getuid;

or

int uid = getuid();


/// setuid

uid = myuid;

or 

setuid = uid;

or

setuid(uid);

```

My initial thoughts is to make the api identical to the posix api which would mean that we don't use Dart setters and getters.


## error returns

Do we return error no.s or do we throw.

As Dart is a modern language it uses Exception whereas posix returns error codes.

Often posix will return null and then expect you to make a separate call to 'errorno' to get the actual error no.

I'm inclined to bring the api that we expose into the modern world.

So I'm proposing that if an posix api returns an error that we throw a PosixException with a message and error code.

# Adding additional functions

The process of adding additional functions is:

1) Install ffigen
```
dart pub global activate ffigen
```

2) Run the ffigen setup.

 The paths may be different on your system. Search for clang-c/Index.h

```
sudo apt-get install libclang-dev
dart pub run ffigen:setup -I/usr/lib/llvm-11/include -L/usr/lib/llvm-11/lib
```

3) find the required posix header file

4) use ffigen to create the initial dart file from the header.
 
    - add your header file to ffigen.yaml

5) Run ffigen
 
 
 ```
 dart pub run ffigen  --config ffigen/linux.yaml 
 ```

 
6) convert each method to take/return dart types.





