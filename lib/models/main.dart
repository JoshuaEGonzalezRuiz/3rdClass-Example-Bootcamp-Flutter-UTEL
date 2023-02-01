import 'package:flutter/material.dart';

class NavBarDestination {
  String? name;
  Icon? icon;
  NavBarDestination(this.name, this.icon);
}

List<NavBarDestination> navBarDestinations = [
  NavBarDestination('Widgets', const Icon(Icons.widgets)),
  NavBarDestination(  'Texts', const Icon(Icons.format_size)),
  NavBarDestination('Columns & Rows', const Icon(Icons.web)),
  NavBarDestination('Icons', const Icon(Icons.add_reaction)),
  NavBarDestination('App Bar', const Icon(Icons.horizontal_rule)),
];