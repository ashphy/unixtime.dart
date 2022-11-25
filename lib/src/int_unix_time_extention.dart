extension IntUnixTimeExtention on int {
  /// Convert this number as unix time.
  DateTime toUnixTime({bool isUtc = false}) {
    return DateTime.fromMillisecondsSinceEpoch(
      this * Duration.millisecondsPerSecond,
      isUtc: isUtc,
    );
  }
}
