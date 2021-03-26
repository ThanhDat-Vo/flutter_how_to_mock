import 'package:flutter_test/flutter_test.dart';
import 'package:how_to_mock/main.dart';
import 'package:how_to_mock/repositories/time_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

// class _FakeTimeRepository implements ITimeRepository {
//   @override
//   Future<DateTime> now() async {
//     return DateTime.parse('2021-03-25 08:39:26');
//   }
// }

class _MockTimeRepository extends Mock implements ITimeRepository {}

main() {
  testWidgets("show Good Morning! Text", (tester) async {
    final timeRepository = _MockTimeRepository();
    when(timeRepository.now())
        .thenAnswer((_) => Future.value(DateTime.parse('2021-03-25 08:39:26')));
    // await tester.pumpWidget(Provider<ITimeRepository>(
    //     create: (_) => _FakeTimeRepository(), child: MyApp()));
    await tester.pumpWidget(Provider<ITimeRepository>(
        create: (_) => timeRepository, child: MyApp()));
    await tester.pump();
    final textWidget = find.text('Good Morning!');

    expect(textWidget, findsOneWidget);
  });
}
