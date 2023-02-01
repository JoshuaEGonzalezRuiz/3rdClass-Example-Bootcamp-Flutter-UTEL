import 'package:flutter/material.dart';

class WidgetTemplates {
  Widget containerTemplate(Widget child) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
          ),
          color: Colors.blueGrey),
      child: child,
    );
  }

  Widget cardTemplate(Widget child) {
    return Card(
        color: Colors.lightBlue.shade100,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            side: BorderSide(color: Colors.black)),
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: child,
        ));
  }
}
