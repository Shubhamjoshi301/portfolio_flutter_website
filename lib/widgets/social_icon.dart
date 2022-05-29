import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final String? icon;
  final String? socialLink;
  final double? height;
  final double? horizontalPadding;

//  void _launchUrl() async {
//   if (!await launchUrl(_url)) throw 'Could not launch $_url';
// }

  const SocialMediaIconBtn({
    Key? key,
    this.icon,
    this.socialLink,
    this.height,
    this.horizontalPadding,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(socialLink as String);
    // final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding!),
      child: IconButton(
        color: Theme.of(context).colorScheme.primary,
        icon: Image.network(icon!,
            color: Theme.of(context).colorScheme.secondary),
        iconSize: height,
        onPressed: () async {
          if (!await launchUrl(_url)) throw "helo";
        },
        // hoverColor: kPrimaryColor,
      ),
    );
  }
}
