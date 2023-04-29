import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<StatefulWidget> createState() => CatalogueState();
}

class CatalogueState extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("One"),
          onTap: () {},
          selectedColor: Colors.amber,
          selected: true,
        ),
        ListTile(
          title: Text("Two"),
          onTap: () {},
        ),
      ],
    );
  }
}
