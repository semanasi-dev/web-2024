import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class HoverButton extends StatefulWidget {
  final List<Color>? cores;
  final String texto;
  String? fonte;
  bool? bold;
  double? size;
  Color? shadowColor;

  HoverButton({
    super.key,
    this.fonte,
    this.bold,
    this.size,
    this.shadowColor,
    required this.cores,
    required this.texto,
  });

  @override
  HoverButtonState createState() => HoverButtonState();
}

class HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  void _onEnter(PointerEvent details) {
    setState(() {
      isHovered = true;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      isHovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: GestureDetector(
        onTap: () {
          _launchURL(
              'https://materdei.jacad.com.br/academico/eventos/programacao-do-evento/45');
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: widget.cores!,
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color:
                          widget.shadowColor ?? Colors.white.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          alignment: Alignment.center,
          child: Text(
            widget.texto,
            style: TextStyle(
              color: Colors.white,
              fontSize:
                  MediaQuery.of(context).size.width * (widget.size ?? 0.015),
              fontFamily: widget.fonte,
              fontWeight:
                  widget.bold != null ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
