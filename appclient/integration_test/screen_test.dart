import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:project_tests/app.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  makeTestableWidget() => const MaterialApp(
        home: App(),
      );
  testWidgets("Testando o projeto", (WidgetTester tester) async {
    await tester.pumpWidget(makeTestableWidget());
    await tester.pumpAndSettle();
    expect(find.text("Ola"), findsOneWidget);
  });
  testWidgets("Testando o projeto1", (WidgetTester tester) async {
    await tester.pumpWidget(makeTestableWidget());
    await tester.pumpAndSettle();
    expect(find.text("Olaa"), findsOneWidget);
  });
}
