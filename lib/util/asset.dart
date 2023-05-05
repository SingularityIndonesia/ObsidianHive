import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<String>> assetFileList() async {
  final manifestContent = await rootBundle.loadString('AssetManifest.json');
  final Map<String, dynamic> manifestMap = json.decode(manifestContent);
  return manifestMap.keys.where((String key) => key.contains('.md')).toList();
}
