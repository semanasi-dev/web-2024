import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextoComBorda extends StatefulWidget {
  final String text;
  final String? fontFamily;
  final double? fontSize;
  final Color? textColor;
  final Color? borderColor;

  const TextoComBorda({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontFamily,
    this.textColor,
    this.borderColor,
  });

  @override
  State<TextoComBorda> createState() => _TextoComBordaState();
}

class _TextoComBordaState extends State<TextoComBorda> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SelectableText(
          widget.text,
          style: GoogleFonts.pressStart2p(
            fontSize: widget.fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 4
              ..color = widget.borderColor!,
          ),
          textAlign: TextAlign.start,
        ),
        SelectableText(
          widget.text,
          style: GoogleFonts.pressStart2p(
            fontSize: widget.fontSize,
            color: widget.textColor,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
