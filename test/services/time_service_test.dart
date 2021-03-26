import 'package:flutter_test/flutter_test.dart';
import 'package:how_to_mock/services/time_service.dart';

main() {
  test("Expect morning", () {
    final timeService = TimeService();
    String time = timeService.getCurrentTime();
    expect(time, "Morning");
  });
}
