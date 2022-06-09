import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tech extends StatelessWidget {
  final String tech;
  const Tech({Key? key, required this.tech}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.arrow_right,
          color: Colors.red,
        ),
        Text(
          tech,
          style: GoogleFonts.montserrat().copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
