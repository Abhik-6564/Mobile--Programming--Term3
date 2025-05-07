import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:abhik_ex1/main.dart'; // Replace with actual project name

void main() {
  testWidgets('Landing screen loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(ElectroStoreApp());

    expect(find.text('Get Started'), findsOneWidget);
    expect(find.byIcon(Icons.electrical_services), findsOneWidget);
  });
}
