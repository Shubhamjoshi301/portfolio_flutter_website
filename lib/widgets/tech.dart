import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tech extends StatelessWidget {
  final String tech;
  final bool phoneView;
  const Tech({Key? key, required this.tech, required this.phoneView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (!phoneView) {
      return Row(
        children: [
          Icon(
            Icons.arrow_right,
            size: width > 760 ? width * 0.01 : 6,
            color: Colors.red,
          ),
          Text(
            tech,
            style: GoogleFonts.montserrat().copyWith(
              fontSize: width > 660 ? width * 0.011 : 7,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      );
    }
    return Row(
      children: [
        Icon(
          Icons.arrow_right,
          size: width * 0.04,
          color: Colors.red,
        ),
        Text(
          tech,
          style: GoogleFonts.montserrat().copyWith(
            fontSize: width * 0.03,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
