import 'package:unixtime/unixtime.dart';

void main() {
  final datetime = 1669361095.toUnixTime(isUtc: true);
  print(datetime);
  print(datetime.unixtime);
}
