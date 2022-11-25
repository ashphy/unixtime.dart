extension DateTimeUnixTimeExtention on DateTime {
  /// The number of seconds since the "Unix epoch" 1970-01-01T00:00:00Z (UTC).
  int get unixtime {
    return (millisecondsSinceEpoch / Duration.millisecondsPerSecond).round();
  }
}
