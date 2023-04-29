import 'package:obsidian_hive/util/url.dart';

void tapLinkCallback(
  String text,
  String? href,
  String title,
) {
  urlOpen(href ?? "");
}
