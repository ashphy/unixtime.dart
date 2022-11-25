# UnixTime.dart

This extension provides a way to access the UNIX time (seconds)

## Installation

With Dart:

```sh
 $ dart pub add unixtime
```

With Flutter:

```sh
$ flutter pub add unixtime
```

Import

```dart
import 'package:unixtime/unixtime.dart';
```

## Usage

To get the `DateTime` from UNIX time.

```dart
final datetime = 1669361095.toUnixTime();
// => 2022-11-25 16:24:55.000
```

You can create a UTC timezone with `isUtc` option.

```dart
final datetime = 1669361095.toUnixTime(isUtc: true);
// => 2022-11-25 07:24:55.000Z
```

To get UNIX timestamp from `DateTime`.

```dart
DateTime.now().unixtime
// => 1669361095
```
