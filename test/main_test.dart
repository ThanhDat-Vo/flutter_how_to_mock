import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:how_to_mock/main.dart';
import 'package:how_to_mock/repositories/time_repository.dart';
import 'package:provider/provider.dart';

class _FakeTimeRepository implements ITimeRepository {
  @override
  Future<DateTime> now() async {
    return DateTime.parse('2021-03-25 08:39:26');
  }
}

main() {
  testWidgets("show Good Morning! Text", (tester) async {
    await tester.pumpWidget(Provider<ITimeRepository>(
        create: (_) => _FakeTimeRepository(), child: MyApp()));
    await tester.pump();
    final textWidget = find.text('Good Morning!');

    expect(textWidget, findsOneWidget);
  });
}
