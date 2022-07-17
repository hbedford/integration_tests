import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:project_tests/src/app.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets("Testando o projeto", (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();
    expect(find.text("Ola"), findsOneWidget);
  });
  testWidgets("Testando o projeto1", (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();
    expect(find.text("Olaa"), findsOneWidget);
  });
}
