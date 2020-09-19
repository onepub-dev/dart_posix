Provides Dart access to the POSIX api for osx and linux system.


```dart

import 'package:posix/posix.dart';

int uid = getuid();

```


#Contributing

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

As Dart is a modern language it uses Exception whereas posix returns erorr codes.

Often posix will return null and then expect you to make a separate call to 'errorno' to get the actually error no.

I'm inclined to bring the api that we expose into the modern world.

So I'm proposing that if an posix api returns an error that we throw a PosixException with a message and error code.


