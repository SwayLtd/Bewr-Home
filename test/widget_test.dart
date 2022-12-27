import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Text widget displays correct text', (tester) async {
    // Build the widget
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Text('Hello World'),
        ),
      ),
    );

    // Find the text widget
    final textWidget = find.text('Hello World');

    // Verify that the text widget is displayed
    expect(textWidget, findsOneWidget);
  });
}

// It is important to note that this test not only verifies that the text is displayed, but also that the widget has been correctly constructed and that it fits correctly into the application's widget tree.
