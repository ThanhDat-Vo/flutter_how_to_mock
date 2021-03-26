import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:how_to_mock/main.dart';

main() {
  testWidgets("show Good Morning! Text", (tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pump();
    final textWidget = find.byKey(Key("CurrentTime"));

    expect(textWidget,
        isA<Text>().having((s) => s.data, "has data", "Good Morning!"));
  });
}
