import 'package:flutter/material.dart';
import 'package:portfolio/constants/content.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tech.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutPhone extends StatelessWidget {
  const AboutPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Container(
      // constraints: BoxConstraints(minHeight: height),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      // color: Theme.of(context).backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AdaptiveText(
                "About Me",
                style: GoogleFonts.montserrat().copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.normal),
              ),
              Theme.of(context).colorScheme.primary ==
                      const Color.fromARGB(255, 0, 0, 0)
                  ? SvgPicture.asset(
                      "assets/images/eyeHair.svg",
                      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      height: width * 0.1,
                    )
                  : SvgPicture.asset(
                      "assets/images/eyeHair.svg",
                      height: width * 0.1,
                    )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Who am I?",
            style: GoogleFonts.montserrat().copyWith(
              color: Colors.red,
              fontSize: width * 0.04,
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.symmetric(vertical: 50),
          //   // height: 600,
          //   width: width * 0.42 - 15,
          //   // color: Colors.amber,
          //   child: Align(
          //     alignment: Alignment.topRight,
          //     child: Theme.of(context).colorScheme.primary ==
          //             const Color.fromARGB(255, 0, 0, 0)
          //         ? SvgPicture.asset(
          //             "assets/images/laptopGuy.svg",
          //             height: width * 0.31,
          //             color: Colors.grey,
          //           )
          //         : SvgPicture.asset(
          //             "assets/images/laptopGuy.svg",
          //             height: width * 0.31,
          //             color: Colors.blueGrey[600],
          //           ),
          //   ),
          // ),

          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                AdaptiveText(
                  "I am Shubham Joshi, a Computer Science Engineer and tech enthusiast .",
                  style: GoogleFonts.montserrat().copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: width > 760 ? width * 0.015 : 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                AdaptiveText(
                  ConstantContent.about_string,
                  style: GoogleFonts.montserrat().copyWith(
                    letterSpacing: 1.2,
                    height: 2,
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: width > 760 ? width * 0.01 : 12,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: width - 60,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Text(
                  "Technologies I have worked with:",
                  style: GoogleFonts.montserrat().copyWith(
                    color: Colors.red,
                    fontSize: width * 0.03,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Column(
                  children: [
                    Row(
                      children:  [
                        Tech(
                          tech: "Flutter",
                          phoneView: true,
                        ),
                        Expanded(child: SizedBox()),
                        Tech(
                          tech: "Firebase",
                          phoneView: true,
                        ),
                        Expanded(child: SizedBox()),
                        Tech(
                          tech: "Python",
                          phoneView: true,
                        ),
                        Expanded(child: SizedBox()),
                        Tech(
                          tech: "Tensorflow",
                          phoneView: true,
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Tech(
                          tech: "Keras",
                          phoneView: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Tech(
                          tech: "AWS",
                          phoneView: true,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: width - 60,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Text(
                  "Name:  Shubham Joshi",
                  style: GoogleFonts.montserrat().copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: width * 0.031),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Age:  21",
                  style: GoogleFonts.montserrat().copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: width * 0.031,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Email:  joshishubham0301@gmail.com",
                  style: GoogleFonts.montserrat().copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: width * 0.031),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "From:  Nagpur, Maharashtra, India.",
                  style: GoogleFonts.montserrat().copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: width * 0.031),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
