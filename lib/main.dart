import 'package:flutter/material.dart';
import 'package:semanaacademica2024/enum/device_type.dart';
import 'package:semanaacademica2024/screens/desktop/principal_desktop.dart';
import 'package:semanaacademica2024/screens/mobile/principal_mobile.dart';
import 'package:semanaacademica2024/screens/tablet/tablet.dart';
import 'package:semanaacademica2024/utils/utils.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceType deviceType = Utils.getDeviceType(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              switch (deviceType) {
                case DeviceType.mobile:
                  return const PrincipalScreenMobile();
                case DeviceType.tablet:
                  return const PrincipalScreenTablet();
                case DeviceType.desktop:
                  return const PrincipalScreenDesktop();
                default:
                  return const PrincipalScreenDesktop();
              }
            },
          ),
        ),
      ),
    );
  }
}
