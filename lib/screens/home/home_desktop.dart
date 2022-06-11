import 'package:flutter/material.dart';
import 'package:portfolio/animation/bottom_animator.dart';
import 'package:portfolio/animation/entrance_fader.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/widgets/social_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kSocialIcons = [
      "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
      "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
      "https://img.icons8.com/android/480/ffffff/twitter.png",
      "https://img.icons8.com/metro/308/ffffff/linkedin.png",
      "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    ];
    const kSocialLinks = [
      "https://www.facebook.com/profile.php?id=100005460554654",
      "https://www.instagram.com/__shubhamj.35__/?hl=en",
      "https://twitter.com/Shubham5_3",
      "https://www.linkedin.com/in/shubham-joshi-471195191/",
      "https://github.com/Shubhamjoshi301",
    ];
    //  final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Theme.of(context).colorScheme.primary,
      height: height,
      width: width,
      child: Container(
        margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.1, width * 0.1, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AdaptiveText(
                  "WELCOME TO MY PORTFOLIO! ",
                  style: GoogleFonts.montserrat().copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: width > 760 ? width * 0.015 : 12,
                      fontWeight: FontWeight.normal),
                ),
                EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 2),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(
                    "assets/images/4AIB.gif",
                    height: height * 0.1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            AdaptiveText(
              "Shubham",
              style: GoogleFonts.montserrat().copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: width * 0.085,
                  fontWeight: FontWeight.normal),
            ),
            AdaptiveText(
              "Joshi",
              style: GoogleFonts.montserrat().copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: width * 0.095,
                  fontWeight: FontWeight.normal),
            ),
            EntranceFader(
              offset: const Offset(-10, 0),
              delay: const Duration(seconds: 1),
              duration: const Duration(milliseconds: 800),
              child: Row(
                children: [
                  const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.red,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Flutter Developer',
                        textStyle: GoogleFonts.montserrat().copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: width > 760 ? width * 0.012 : 12,
                            fontWeight: FontWeight.normal),
                        speed: const Duration(milliseconds: 60),
                      ),
                      TypewriterAnimatedText(
                        'Python Developer',
                        textStyle: GoogleFonts.montserrat().copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: width > 760 ? width * 0.012 : 12,
                            fontWeight: FontWeight.normal),
                        speed: const Duration(milliseconds: 60),
                      ),
                      TypewriterAnimatedText(
                        'AWS Developer',
                        textStyle: GoogleFonts.montserrat().copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: width > 760 ? width * 0.012 : 12,
                            fontWeight: FontWeight.normal),
                        speed: const Duration(milliseconds: 60),
                      ),
                    ],
                    totalRepeatCount: 99999999999,
                    pause: const Duration(milliseconds: 200),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                kSocialIcons.length,
                (index) => WidgetAnimator(
                  child: SocialMediaIconBtn(
                    icon: kSocialIcons[index],
                    socialLink: kSocialLinks[index],
                    height: height * 0.035,
                    horizontalPadding: width * 0.005,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
