import 'package:flutter/material.dart';

import 'package:portfolio/screens/contact/contact_desktop.dart';
import 'package:portfolio/screens/contact/contact_phone.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Contacts extends StatefulWidget {
  final VoidCallback callback;
  const Contacts({Key? key, required this.callback}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const ContactDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const ContactDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return const ContactDesktop();
        }

        return const ContactPhone();
      },
    );
  }
}
