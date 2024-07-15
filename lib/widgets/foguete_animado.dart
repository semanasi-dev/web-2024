import 'package:flutter/widgets.dart';

class FogueteAnimado extends StatefulWidget {
  const FogueteAnimado({super.key});

  @override
  FogueteAnimadoState createState() => FogueteAnimadoState();
}

class FogueteAnimadoState extends State<FogueteAnimado>
    with SingleTickerProviderStateMixin {
  FogueteAnimadoState();
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    animation = Tween<double>(begin: -25, end: 10).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: SizedBox(
            height: screenSize.height * 0.8,
            width: screenSize.width * 0.4,
            child: Image.asset(
              './lib/assets/Foguete.png',
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}
