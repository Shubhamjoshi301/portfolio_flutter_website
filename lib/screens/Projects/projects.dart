import 'package:flutter/material.dart';
import 'package:portfolio/screens/Projects/projects_desktop.dart';
import 'package:portfolio/screens/Projects/projects_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatefulWidget {
  final VoidCallback callback;
  const Projects({Key? key, required this.callback}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const ProjectsDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const ProjectsDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return const ProjectsDesktop();
        }

        return const ProjectsMobile();
      },
    );
  }
}
