import 'package:flutter/material.dart';

class IconExamples extends StatefulWidget {
  const IconExamples({Key? key}) : super(key: key);

  @override
  State<IconExamples> createState() => _IconExamplesState();
}

class _IconExamplesState extends State<IconExamples> {
  bool isPressed = false;
  bool isHover = false;
  bool isLongPressed = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Icono Normal"),
          const Icon(
            Icons.emoji_emotions,
            size: 70,
          ),
          const Text("Icono Customatizado"),
          const Icon(
            Icons.emoji_emotions,
            size: 70,
            color: Colors.white,
            semanticLabel: "Custom Icon",
            textDirection: TextDirection.ltr,
            shadows: [
              Shadow(color: Colors.teal, offset: Offset(2, 4), blurRadius: 20)
            ],
          ),
          const Text("IconButton habilitado"),
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.emoji_emotions,
                size: 70,
              )),
          const Text("IconButton deshabilitado"),
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.emoji_emotions,
                size: 70,
              )),
          const Text("ElevatedButton habilitado"),
          ElevatedButton(
              onPressed: (){},
              child: const Icon(
                Icons.emoji_emotions,
                size: 70,
              )),
          const Text("ElevatedButton deshabilitado"),
          const ElevatedButton(
              onPressed: null,
              child: Icon(
                Icons.emoji_emotions,
                size: 70,
              )),
          const Text("ElevatedButton icono con texto"),
          ElevatedButton(
              onPressed: (){},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.emoji_emotions,
                    size: 70,
                  ),
                  Text("Texto")
                ],
              )),
        ],
      ),
    );
  }
}
