// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bartalap/main.dart';

void main() {
  testWidgets('Widgets are working as expected', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our page starts with Messages page.
    expect(find.text('Messages'), findsOneWidget);
    expect(find.text('Business'), findsNothing);

    // Tap the 'Person' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.person_2_rounded));
    await tester.pump();

    // Verify that our page has changed to 'Personal' page.
    expect(find.text('Messages'), findsNothing);
    expect(find.text('Personal'), findsOneWidget);

    // Tap the 'Business' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.business));
    await tester.pump();

    // Verify that our page has changed to 'Personal' page.
    expect(find.text('Personal'), findsNothing);
    expect(find.text('Business'), findsOneWidget);
  });
}
