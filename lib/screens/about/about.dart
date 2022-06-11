import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatefulWidget {
  final VoidCallback callback;
  const About({Key? key, required this.callback}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return AboutDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return AboutDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return AboutDesktop();
        }

        return AboutDesktop();
      },
    );
  }
}
