import 'package:flutter/material.dart';
import 'package:obsidian_hive/util/theme.dart';
import 'package:obsidian_hive/widget/catalogue.dart';
import 'package:obsidian_hive/widget/markdown_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Obsidian Hive',
      debugShowCheckedModeBanner: false,
      theme: LightTheme,
      darkTheme: DarkTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          width: 250,
          height: double.infinity,
          color: ColorSurface,
          child: Catalogue(),
        ),
        Expanded(
          child: MarkdownViewer(
            filePath: _filePath ?? "README.md",
          ),
        ),
      ],
    ));
  }
}
