import 'package:flutter_test/flutter_test.dart';
import 'package:how_to_mock/services/time_service.dart';

main() {
  test("Expect morning", () async {
    final timeService = TimeService();
    String time =
        await timeService.getCurrentTime(DateTime.parse('2021-03-25 08:39:26'));
    expect(time, "Morning");
  });
}
