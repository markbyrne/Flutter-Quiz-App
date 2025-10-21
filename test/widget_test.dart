// This is a basic Flutter widget test.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_app/quiz_app.dart';

void main() {
  testWidgets('Test App Structure and Navigation', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const QuizApp());

    // Verify that app starts on the start page.
    expect(find.text('Start Quiz'), findsOneWidget);

    // Tap the 'launch' icon button and trigger a frame.
    await tester.tap(find.byIcon(Icons.launch));
    await tester.pump();

    // Verify that we arrive at a question screen.
    expect(find.byType(ElevatedButton), findsNWidgets(4));

    // click through quiz.
    for(var i=0; i < QuizApp.quizLength; i++){
      await tester.tap(find.byType(ElevatedButton).first);
      await tester.pump();
    }

    // Verify we hit result page.
    expect(find.byType(SingleChildScrollView), findsOneWidget);
    expect(find.text('Restart Quiz'), findsOneWidget);

    // restart the quiz.
    await tester.tap(find.byIcon(Icons.restart_alt_rounded));
    await tester.pump();

    // click through quiz.
    for(var i=0; i < QuizApp.quizLength; i++){
      await tester.tap(find.byType(ElevatedButton).first);
      await tester.pump();
    }

    // Verify we hit result page.
    expect(find.byType(SingleChildScrollView), findsOneWidget);
    expect(find.text('Restart Quiz'), findsOneWidget);
  });
}
