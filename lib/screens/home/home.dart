import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/screens/home/home_desktop.dart';

class HomePage extends StatefulWidget {
  final VoidCallback callback;
  const HomePage({Key? key, required this.callback}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const HomeDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return  const HomeDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return const HomeDesktop();
        }

        return  const HomeDesktop();
      },
    );
  }
}
