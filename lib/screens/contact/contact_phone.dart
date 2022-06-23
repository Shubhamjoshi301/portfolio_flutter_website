import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:portfolio/widgets/contact_card.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPhone extends StatelessWidget {
  const ContactPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      // scrollDirection: Axis.horizontal,

      children: [
        AdaptiveText(
          "Contacts",
          style: GoogleFonts.montserrat().copyWith(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: width * 0.065,
              fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 30,
        ),
        const ContactCard(
          icon: Icons.home,
          isPhone: true,
        ),
        const SizedBox(
          height: 20,
        ),
        const ContactCard(
          icon: Icons.call,
          isPhone: true,
        ),
        const SizedBox(
          height: 20,
        ),
        const ContactCard(
          icon: Icons.email,
          isPhone: true,
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
