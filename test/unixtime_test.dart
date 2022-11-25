import 'package:unixtime/unixtime.dart';
import 'package:test/test.dart';

void main() {
  final unixepoch = DateTime.utc(1970, 1, 1, 0, 0, 0);
  group('Int can be converted as unix time to DateTime', () {
    test('unix epoch', () {
      expect(0.unixtimeUtc, unixepoch);
    });

    test('local time', () {
      expect(1669361095.unixtime, DateTime(2022, 11, 25, 16, 24, 55));
    });
  });

  group('DateTime can be converted to unix time', () {
    test('', () {
      final datetime = DateTime(2022, 11, 25, 16, 24, 55);
      expect(datetime.unixtime, 1669361095);
    });
  });
}
