import 'package:flutter/material.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 42.0, vertical: 8.0),
      color: Colors.blue,
      child: Row(
        children: [
          Row(
            children: [
              WindowStyleDropdownMenu(
                buttonTitleStyle: const TextStyle(color: Colors.black),
                dropdownWidth: 300,
                buttonTitle: 'File',
                dropdownItems: const [
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    trailing:
                        Text('Ctrl + O', style: TextStyle(color: Colors.white)),
                    title: Text(
                      'Open',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    trailing:
                        Text('Ctrl + N', style: TextStyle(color: Colors.white)),
                    title: Text(
                      'New',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              const VerticalDivider(
                width: 2,
                thickness: 1,
                color: Colors.white,
              ),
              WindowStyleDropdownMenu(
                buttonTitleStyle: const TextStyle(color: Colors.black),
                dropdownWidth: 300,
                buttonTitle: 'Save',
                dropdownItems: const [
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    trailing:
                        Text('Ctrl + S', style: TextStyle(color: Colors.white)),
                    title: Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    trailing: Text('Ctrl + K + S',
                        style: TextStyle(color: Colors.white)),
                    title: Text(
                      'Save All',
                      style: TextStyle(color: Colors.white),
                    ),
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
