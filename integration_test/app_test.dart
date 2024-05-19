import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab5_214691/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Test', () {
    testWidgets("full app test", (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Assuming the first TextFormField is for email and the second is for password
      var emailField = find.byType(TextFormField).first;
      var passwordField = find.byType(TextFormField).last;
      var loginButton = find.byType(ElevatedButton).first;

      // Enter text for the email address
      await tester.enterText(emailField, 'flutterexp@gmail.com');
      await tester.pumpAndSettle();

      // Enter text for the password
      await tester.enterText(passwordField, '123456');
      await tester.pumpAndSettle();

      // Tap the login button
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      // Find the first checkbox
      var firstCheckbox = find.byType(Checkbox).first;

      // Ensure the first checkbox has the correct semantics before tapping it
      expect(
        tester.getSemantics(firstCheckbox),
        matchesSemantics(
          hasTapAction: true,
          hasCheckedState: true,
          isChecked: false,
          hasEnabledState: true,
          isEnabled: true,
          isFocusable: true,
        ),
      );

      // Tap the first checkbox
      await tester.tap(firstCheckbox);
      await tester.pumpAndSettle();

      // Ensure the first checkbox has the correct semantics after tapping it
      expect(
        tester.getSemantics(firstCheckbox),
        matchesSemantics(
          hasTapAction: true,
          hasCheckedState: true,
          isChecked: true,
          hasEnabledState: true,
          isEnabled: true,
          isFocusable: true,
        ),
      );
    });
  });
}
