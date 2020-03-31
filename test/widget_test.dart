
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:boring_app/main.dart';

void main() {
  testWidgets('Click to open tile', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.byIcon(Icons.launch), findsNothing);
    // Verify that our counter starts at 0.
//    expect(find.text('0'), findsOneWidget);
//    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byType(ExpansionTile).first);
    await tester.pump();

    expect(find.byIcon(Icons.launch), findsOneWidget);
    // Verify that our counter has incremented.
//    expect(find.text('0'), findsNothing);
//    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byType(ExpansionTile).last);
    await tester.pump();

    expect(find.byIcon(Icons.launch), findsWidgets);
  });
}
