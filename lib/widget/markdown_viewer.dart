import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../util/file.dart';
import '../util/markdown.dart';

class MarkdownViewer extends StatefulWidget {
  final String? filePath;

  const MarkdownViewer({
    super.key,
    required this.filePath,
  });

  @override
  State<StatefulWidget> createState() => MarkdownViewerState();
}

class MarkdownViewerState extends State<MarkdownViewer> {
  String _fileContent = "";

  void loadFile(String? name) {
    setState(() {
      _fileContent = "Loading..";
    });

    loadAsset(name).then((value) {
      setState(() {
        _fileContent = value;
      });
    });
  }

  @override
  void initState() {
    loadFile(widget.filePath);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Markdown(
      data: _fileContent,
      selectable: true,
      onTapLink: tapLinkCallback,
    );
  }
}
