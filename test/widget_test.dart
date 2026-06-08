import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plant_identifier/app.dart';

void main() {
  testWidgets('App loads without errors', (WidgetTester tester) async {
    // Build our app
    await tester.pumpWidget(const MyApp());

    // Wait for animations and async operations
    await tester.pumpAndSettle();

    // Verify that the app starts with splash screen
    expect(find.text('Plant Identifier'), findsOneWidget);
    expect(find.byIcon(Icons.eco), findsOneWidget);
  });

  testWidgets('Navigation test - Splash to Onboarding', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Wait for splash screen delay (2 seconds)
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    // Should be on onboarding screen now
    expect(find.text('Identify Any Plant'), findsOneWidget);
  });
}