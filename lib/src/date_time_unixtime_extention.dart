extension DateTimeUnixtimeExtention on DateTime {
  int get unixtime =>
      (millisecondsSinceEpoch / Duration.millisecondsPerSecond).round();
}
