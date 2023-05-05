import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<StatefulWidget> createState() => CatalogueState();
}

class CatalogueState extends State<Catalogue> {
  final List<int> _catalogue = List.of([1, 2, 3]);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _catalogue.length,
      itemBuilder: (BuildContext c, int index) => ListTile(
        title: Text('Index $index'),
      ),
    );
  }
}
