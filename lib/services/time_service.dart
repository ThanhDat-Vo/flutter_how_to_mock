class TimeService {
  String getCurrentTime(DateTime now) {
    if (now.hour > 6 && now.hour < 12) {
      return "Morning";
    }
    if (now.hour >= 12 && now.hour < 18) {
      return "Afternoon";
    }
    return "Evening";
  }
}
