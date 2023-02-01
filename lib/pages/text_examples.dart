import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextExamples extends StatelessWidget {
  const TextExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Texto normal",
              style: TextStyle(color: Colors.red, fontSize: 16)),
          SizedBox(height: 20),
          Text(
            "Texto en negritas",
            style: TextStyle(
              fontSize: 16,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Texto en italica",
            style: TextStyle(
              fontSize: 16,
              color: Colors.purple,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Texto con tamaño grande",
            style: TextStyle(              color: Colors.blueAccent,
                fontSize: 30),
          ),
          SizedBox(height: 20),
          Text("Texto con letras espaciadas",
              style: TextStyle(color: Colors.amber, fontSize: 16, letterSpacing: 20)),
          SizedBox(height: 20),
          Text("Texto con palabras espaciadas",
              style: TextStyle(color: Colors.tealAccent, fontSize: 16, wordSpacing: 20)),
          SizedBox(height: 20),
          Text("Texto con fondo y letras de color",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  backgroundColor: Colors.black)),
          SizedBox(height: 20),
          Text("Texto subrayado",
              style: TextStyle(color: Colors.blueGrey,
                  fontSize: 16, decoration: TextDecoration.underline)),
          SizedBox(height: 20),
          Text("Texto tachado",
              style: TextStyle(color: Colors.lime,
                  fontSize: 16, decoration: TextDecoration.lineThrough)),
          SizedBox(height: 20),
          Text("Texto con linea arriba",
              style:
                  TextStyle(color: Colors.pink, fontSize: 16, decoration: TextDecoration.overline)),
          SizedBox(height: 20),
          Text("Texto tipografia personalizada",
              style: GoogleFonts.aboreto(
              textStyle: TextStyle(color: Colors.redAccent, fontSize: 20),
    ))
        ],
      ),
    );
  }
}
