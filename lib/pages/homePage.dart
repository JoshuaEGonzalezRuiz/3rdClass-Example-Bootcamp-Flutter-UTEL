import 'package:flutter/material.dart';
import 'package:third_class_example/pages/stateful_widget_example.dart';
import 'package:third_class_example/pages/stateless_widget_example.dart';
import 'package:third_class_example/pages/text_examples.dart';

import '../models/main.dart';
import '../utils.dart';
import 'colums_and_rows_example.dart';
import 'icons_example.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;
  String pageTitle = navBarDestinations[0].name!;
  WidgetTemplates widgetTemplates = WidgetTemplates();
  bool showCustomAppBar = false;
  bool changeColor = false;
  bool showTextField = false;

  TextEditingController textEditingController = TextEditingController();

  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showCustomAppBar ? AppBar(
        leading: const Icon(Icons.home),
        title: Text(pageTitle),
        elevation: 20,
        backgroundColor: changeColor ? Colors.redAccent.shade100 : null,
        shadowColor: Colors.purple,
        surfaceTintColor: Colors.redAccent,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            side: BorderSide(
                color: Colors.indigo,
                width: 4,
              strokeAlign: StrokeAlign.outside
            )
        ),
        flexibleSpace: Center(
          child: Text(text),
        ),
        bottom: PreferredSize(
            preferredSize: showTextField ? const Size(100, 100) : const Size(0, 0),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: showTextField ? TextField(
                controller: textEditingController,
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Escribe acá',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                    )
                ),
              ) : const SizedBox.shrink(),
            )),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              showTextField = !showTextField;
            });
          }, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){
            setState(() {
              changeColor = !changeColor;
            });
          }, icon: const Icon(Icons.change_circle))
        ],
      ) : AppBar(
        title: Text(pageTitle),
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.black38,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widgetTemplates.containerTemplate(
                    StatelessWidgetExample()
                ),
                widgetTemplates.containerTemplate(
                    const StateFulWidgetExample()
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.black38,
          alignment: Alignment.center,
          child: const TextExamples(),
        ),
        Container(
          color: Colors.black38,
          alignment: Alignment.center,
          child: ColumnsRowsExample(),
        ),
        Container(
            color: Colors.black38,
            alignment: Alignment.center,
            child: const IconExamples()
        ),
        Container(
          color: Colors.black38,
          alignment: Alignment.center,
          child: widgetTemplates.cardTemplate(Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Mostrar App Bar Customizado"),
              Switch(value: showCustomAppBar, onChanged: (value){
                setState(() {
                  showCustomAppBar = !showCustomAppBar;
                });
              })
            ],
          )),
        )
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        elevation: 20,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: Colors.blueGrey.shade100,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            pageTitle = navBarDestinations[index].name!;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: navBarDestinations.map((e) => NavigationDestination(icon: e.icon!, label: e.name!)).toList(),
      ),
    );
  }
}
