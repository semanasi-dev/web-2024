import 'package:flutter/material.dart';
import 'dart:async';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 42.0, vertical: 8.0),
      color: Colors.blue,
      child: Row(
        children: [
          const Row(
            children: [
              DropdownMenu(
                buttonTitleStyle: TextStyle(color: Colors.black),
                dropdownWidth: 300,
                buttonTitle: 'Menu 1',
                dropdownItems: [
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title: Text('Open', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title: Text('New', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              DropdownMenu(
                buttonTitleStyle: TextStyle(color: Colors.black),
                dropdownWidth: 300,
                buttonTitle: 'Menu 2',
                dropdownItems: [
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title: Text('Save', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title:
                        Text('Save All', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              DropdownMenu(
                buttonTitleStyle: TextStyle(color: Colors.black),
                dropdownWidth: 300,
                buttonTitle: 'Menu 3',
                dropdownItems: [
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title: Text('Save', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title:
                        Text('Save All', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              DropdownMenu(
                buttonTitleStyle: TextStyle(color: Colors.black),
                dropdownWidth: 300,
                buttonTitle: 'menu 4',
                dropdownItems: [
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title: Text('Save', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title:
                        Text('Save All', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Navegação',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
              height: 60,
              width: 150,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Torne-se um\npatrocinador',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
              height: 60,
              width: 150,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Inscreva-se',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class DropdownMenu extends StatefulWidget {
  final TextStyle buttonTitleStyle;
  final double dropdownWidth;
  final String buttonTitle;
  final List<ListTile> dropdownItems;

  const DropdownMenu({
    super.key,
    required this.buttonTitleStyle,
    required this.dropdownWidth,
    required this.buttonTitle,
    required this.dropdownItems,
  });

  @override
  DropdownMenuState createState() => DropdownMenuState();
}

class DropdownMenuState extends State<DropdownMenu> {
  bool isDropdownVisible = false;
  Timer? hideTimer;

  void showDropdown() {
    hideTimer?.cancel();
    setState(() {
      isDropdownVisible = true;
    });
  }

  void startHideDropdownTimer() {
    hideTimer = Timer(const Duration(milliseconds: 200), () {
      setState(() {
        isDropdownVisible = false;
      });
    });
  }

  void cancelHideDropdownTimer() {
    hideTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        MouseRegion(
          onEnter: (_) => showDropdown(),
          onExit: (_) => startHideDropdownTimer(),
          child: SizedBox(
            width: 100,
            child: GestureDetector(
              onTap: () {},
              child: Text(widget.buttonTitle, style: widget.buttonTitleStyle),
            ),
          ),
        ),
        if (isDropdownVisible)
          Positioned(
            top: 50,
            child: MouseRegion(
              onEnter: (_) => cancelHideDropdownTimer(),
              onExit: (_) => startHideDropdownTimer(),
              child: Container(
                width: widget.dropdownWidth,
                color: Colors.black,
                child: Column(
                  children: widget.dropdownItems,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
