import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

Map<String, MarkdownPaddingBuilder> paddings = {
  'p': paddingTopNull,
  'h1': paddingTopMedium,
  'h2': paddingTopMedium,
  'h3': paddingTopMedium,
  'h4': paddingTopMedium,
  'h5': paddingTopMedium,
  'h6': paddingTopMedium,
  'li': paddingTopNull,
  'ol': paddingTopNull,
  'ul': paddingTopNull,
  'hr': paddingTopNull,
  'blockquote': paddingTopNull,
  'pre': paddingTopNull,
  'table': paddingTopSmall,
  'thead': paddingTopNull,
  'tbody': paddingTopNull,
  'tr': paddingTopNull
};

MarkdownPaddingBuilder paddingTopNull = PaddingTopNull();
MarkdownPaddingBuilder paddingTopSmall = PaddingTopSmall();
MarkdownPaddingBuilder paddingTopMedium = PaddingTopMedium();
MarkdownPaddingBuilder paddingTopLarge = PaddingTopLarge();

class PaddingTopNull extends MarkdownPaddingBuilder {
  @override
  EdgeInsets getPadding() {
    return const EdgeInsets.only(top: 0);
  }
}

class PaddingTopSmall extends MarkdownPaddingBuilder {
  @override
  EdgeInsets getPadding() {
    return const EdgeInsets.only(top: 8);
  }
}

class PaddingTopMedium extends MarkdownPaddingBuilder {
  @override
  EdgeInsets getPadding() {
    return const EdgeInsets.only(top: 16);
  }
}

class PaddingTopLarge extends MarkdownPaddingBuilder {
  @override
  EdgeInsets getPadding() {
    return const EdgeInsets.only(top: 24);
  }
}
