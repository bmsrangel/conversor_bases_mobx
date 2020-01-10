import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:conversor_binario_mobx/app/modules/home/components/input_field/input_field_widget.dart';

main() {
  testWidgets('InputFieldWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(InputFieldWidget()));
    final textFinder = find.text('InputField');
    expect(textFinder, findsOneWidget);
  });
}
