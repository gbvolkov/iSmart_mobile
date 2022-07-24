// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:flutter_markdown/flutter_markdown.dart' as markdown;

class MarkdownWindget extends StatefulWidget {
  const MarkdownWindget({
    Key? key,
    required this.width,
    required this.height,
    required this.mdText,
    this.txtColor,
    this.linkColor,
    this.fontFamily,
    this.fontSize,
    this.letterSpacing,
    this.wordSpacing,
  }) : super(key: key);

  final double width;
  final double height;
  final String mdText;
  final Color? txtColor;
  final Color? linkColor;
  final String? fontFamily;
  final double? fontSize;
  final double? letterSpacing;
  final double? wordSpacing;

  @override
  _MarkdownWindgetState createState() => _MarkdownWindgetState();
}

void launchUrl(Uri uri) async {
  String url = uri.toString();
  if (await launcher.canLaunch(url)) {
    await launcher.launch(url);
  }
}

// Handle the link. The [href] in the callback contains information
// from the link. The url_launcher package or other similar package
// can be used to execute the link.
Future<void> linkOnTapHandler(
  String text,
  String href,
  String title,
) async {
  var uri = Uri.parse(href);
  launchUrl(uri);
}

class _MarkdownWindgetState extends State<MarkdownWindget> {
  @override
  Widget build(BuildContext context) {
    TextStyle txtStyle = TextStyle(
        color: widget.txtColor,
        fontFamily: widget.fontFamily,
        fontSize: widget.fontSize,
        letterSpacing: widget.letterSpacing,
        wordSpacing: widget.wordSpacing);
    TextStyle linkStyle = TextStyle(
        color: widget.linkColor,
        fontFamily: widget.fontFamily,
        fontSize: widget.fontSize,
        letterSpacing: widget.letterSpacing,
        wordSpacing: widget.wordSpacing);
    return markdown.MarkdownBody(
        styleSheet: markdown.MarkdownStyleSheet(a: linkStyle, p: txtStyle),
        data: widget.mdText,
        onTapLink: (String text, String? href, String title) =>
            linkOnTapHandler(text, href!, title));
  }
}
