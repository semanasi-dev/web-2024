import 'package:flutter/material.dart';
import 'package:semanaacademica2024/enum/enum.dart';
import 'package:semanaacademica2024/screens/desktop/principal_desktop.dart';
import 'package:semanaacademica2024/screens/mobile/principal_mobile.dart';
import 'package:semanaacademica2024/utils/utils.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => ScreenMainState();
}

class ScreenMainState extends State<ScreenMain> {
  @override
  Widget build(BuildContext context) {
    DeviceType deviceType = Utils.getDeviceType(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          switch (deviceType) {
            case DeviceType.mobile:
              return const PrincipalScreenMobile();
            // case DeviceType.tablet:
            //   return tablet(screenSize);
            case DeviceType.desktop:
              return const PrincipalScreenDesktop();
            default:
              return const PrincipalScreenDesktop();
          }
        },
      ),
    );
  }
}
