import 'package:flutter/widgets.dart';

class FogueteAnimado extends StatefulWidget {
  const FogueteAnimado({super.key});

  @override
  FogueteAnimadoState createState() => FogueteAnimadoState();
}

class FogueteAnimadoState extends State<FogueteAnimado>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    animation = Tween<double>(begin: 0, end: 20).animate(
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
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Image.asset('./lib/assets/Icones-Foguete.png'),
          ),
        );
      },
    );
  }
}
