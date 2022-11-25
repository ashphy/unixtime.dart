import 'package:unixtime/unixtime.dart';
import 'package:test/test.dart';

import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

void main() {
  setUp(() {
    tz.initializeTimeZones();
  });

  final unixepoch = DateTime.utc(1970, 1, 1, 0, 0, 0);

  group('DateTime', () {
    test('can be get from unix epoch', () {
      expect(0.toUnixTime(isUtc: true), unixepoch);
    });

    test('can be get from local time', () {
      final tokyo = tz.getLocation('Asia/Tokyo');
      final expected = tz.TZDateTime(tokyo, 2022, 11, 25, 16, 24, 55);
      final actual = 1669361095.toUnixTime();
      expect(actual.isAtSameMomentAs(expected), true);
    });
  });

  group('Unix timestamp', () {
    test('can be get from DateTime', () {
      final datetime = DateTime(2022, 11, 25, 16, 24, 55);
      expect(datetime.unixtime, 1669361095);
    });
  });
}
