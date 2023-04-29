import 'package:flutter/services.dart';

Future<String> loadAsset(String? filePath) async {
  if (filePath == null) {
    return await Future.value('');
  } else {
    return await rootBundle.loadString('vault/$filePath');
  }
}
