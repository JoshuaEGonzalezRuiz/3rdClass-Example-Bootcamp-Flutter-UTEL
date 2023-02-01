import 'package:flutter/material.dart';
import 'package:third_class_example/utils.dart';

class StatelessWidgetExample extends StatelessWidget {
  StatelessWidgetExample({Key? key}) : super(key: key);

  final WidgetTemplates widgetTemplates = WidgetTemplates();

  @override
  Widget build(BuildContext context) {
    return widgetTemplates.cardTemplate(const Text("Esto es un Stateless Widget"));
  }
}