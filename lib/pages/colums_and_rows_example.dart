import 'package:flutter/material.dart';
import 'package:third_class_example/utils.dart';

class ColumnsRowsExample extends StatelessWidget {
  ColumnsRowsExample({Key? key}) : super(key: key);
  final WidgetTemplates widgetTemplates = WidgetTemplates();
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          widgetTemplates.cardTemplate(Text("Ejemplo de Columna")),
          widgetTemplates.containerTemplate(
              Column(
                children: [
                  widgetTemplates.cardTemplate(
                      Image.network(
                          height: 200,
                          "https://images.unsplash.com/photo-1672426432092-70414facd101?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MDM3ODF8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NzQ4ODE1NzE&ixlib=rb-4.0.3&q=80&w=1080")),
                  widgetTemplates.cardTemplate(
                      Text("Paisaje Sombrío"))
                ],
              )),
          widgetTemplates.cardTemplate(Text("Ejemplo de Fila")),
          widgetTemplates.containerTemplate(
              Row(
                children: [
                  widgetTemplates.cardTemplate(
                      Image.network(
                          height: 150,
                          "https://images.unsplash.com/photo-1672426432092-70414facd101?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MDM3ODF8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NzQ4ODE1NzE&ixlib=rb-4.0.3&q=80&w=1080"),
                      ),
                  Flexible(
                    child: widgetTemplates.cardTemplate(
                        Text(
                            "Un paisaje sombrio podría describirse como un lugar oscuro y tenebroso, con árboles y arbustos cubiertos de musgo y lianas, y un cielo cubierto por una densa capa de nubes. El suelo estaría cubierto de hojas y ramas secas, y el aire estaría lleno de una espesa niebla. El sonido sería el de los animales nocturnos y el viento soplando a través de los árboles. La sensación general sería de soledad y misterio."),),
                  )
                ],
              ),
             )
        ],
      ),
    );
  }
}
