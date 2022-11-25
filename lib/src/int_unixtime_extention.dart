extension IntUnixtimeExtention on int {
  DateTime _getUnixTime(int seconds, bool isUtc) {
    return DateTime.fromMillisecondsSinceEpoch(
      seconds * Duration.millisecondsPerSecond,
      isUtc: isUtc,
    );
  }

  DateTime get unixtime => _getUnixTime(this, false);
  DateTime get unixtimeUtc => _getUnixTime(this, true);
}
