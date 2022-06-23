import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:portfolio/widgets/contact_card.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        AdaptiveText(
          "Contacts",
          style: GoogleFonts.montserrat().copyWith(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: width > 900 ? width * 0.03 : 25,
              fontWeight: FontWeight.normal),
        ),
        SizedBox(height: width > 760 ? 70 : 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ContactCard(
              icon: Icons.home,
              isPhone: false,
            ),
            ContactCard(
              icon: Icons.call,
              isPhone: false,
            ),
            ContactCard(
              icon: Icons.email,
              isPhone: false,
            ),
          ],
        ),
      ],
    );
  }
}
