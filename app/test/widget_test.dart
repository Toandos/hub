import 'package:flutter_test/flutter_test.dart';
import 'package:hub/main.dart';

void main() {
  testWidgets('Example test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text('Some placeholder text'), findsNothing);
  });
}
