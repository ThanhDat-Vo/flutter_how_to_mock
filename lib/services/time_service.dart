class TimeService {
  Future<String> getCurrentTime(DateTime now) async {
    if (now.hour > 6 && now.hour < 12) {
      return "Morning";
    }
    if (now.hour >= 12 && now.hour < 18) {
      return "Afternoon";
    }
    return "Evening";
  }
}
