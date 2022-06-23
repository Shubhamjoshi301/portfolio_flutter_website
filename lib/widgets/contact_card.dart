import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  final IconData icon;
  final bool isPhone;
  const ContactCard({Key? key, required this.icon, required this.isPhone})
      : super(key: key);
  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MouseRegion(
      onExit: (details) {
        setState(() {
          isHovered = false;
          debugPrint(details.toString());
          debugPrint(isHovered.toString());
        });
      },
      onHover: (details) {
        setState(() {
          isHovered = true;
          debugPrint(isHovered.toString());
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: widget.isPhone ? width * 0.65 : width / 4.4,
        height: widget.isPhone ? 150 : width / 7,
        padding: EdgeInsets.all(width * 0.02),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context)
              .colorScheme
              .primary
              .withBlue(50)
              .withRed(50)
              .withGreen(50),
          boxShadow: isHovered
              ? const [
                  BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 20,
                      blurStyle: BlurStyle.normal),
                ]
              : [],
        ),
        child: Icon(
          widget.icon,
          size: width / 12,
          color: Colors.red,
        ),
      ),
    );
  }
}
