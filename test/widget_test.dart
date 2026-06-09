// test/widget_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:plant_care_app/main.dart';

void main() {
  testWidgets('App should start without errors', (WidgetTester tester) async {
    await tester.pumpWidget(const PlantCareApp());
    await tester.pumpAndSettle();

    // Verify that the app starts
    expect(find.byType(PlantCareApp), findsOneWidget);
  });
}