import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tech extends StatelessWidget {
  final String tech;
  const Tech({Key? key, required this.tech}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        const Icon(
          Icons.arrow_right,
          color: Colors.red,
        ),
        Text(
          tech,
          style: GoogleFonts.montserrat().copyWith(
            fontSize: width > 760 ? width * 0.015 : 8,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
