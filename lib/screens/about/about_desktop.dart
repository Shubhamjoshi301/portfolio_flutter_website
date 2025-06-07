import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tech.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(minHeight: height),
      width: double.infinity,

      // color: Theme.of(context).backgroundColor,
      child: Column(
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
                    fontSize: width > 900 ? width * 0.03 : 12,
                    fontWeight: FontWeight.normal),
              ),
              Theme.of(context).colorScheme.primary ==
                      const Color.fromARGB(255, 0, 0, 0)
                  ? SvgPicture.asset(
                      "assets/images/eyeHair.svg",
                      color: Colors.white,
                      height: width > 900 ? width * 0.03 : 12,
                    )
                  : SvgPicture.asset(
                      "assets/images/eyeHair.svg",
                      height: width > 900 ? width * 0.03 : 12,
                    )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                // height: 600,
                width: width * 0.42 - 15,
                // color: Colors.amber,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Theme.of(context).colorScheme.primary ==
                          const Color.fromARGB(255, 0, 0, 0)
                      ? SvgPicture.asset(
                          "assets/images/laptopGuy.svg",
                          height: width * 0.31,
                          color: Colors.grey,
                        )
                      : SvgPicture.asset(
                          "assets/images/laptopGuy.svg",
                          height: width * 0.31,
                          color: Colors.blueGrey[600],
                        ),
                ),
              ),
              const SizedBox(
                width: 80,
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Who am I?",
                      style: GoogleFonts.montserrat().copyWith(
                        color: Colors.red,
                        fontSize: width > 760 ? width * 0.015 : 8,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: width * 0.45,
                      child: AdaptiveText(
                        "Hey, I am Shubham Joshi, a Computer Science Engineer and tech enthusiast.",
                        style: GoogleFonts.montserrat().copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: width > 760 ? width * 0.015 : 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: width * 0.45,
                      child: AdaptiveText(
                        "I am an AI/ML backend developer with a major in Computer Science from India. I love to build things that can have a positive impact on people's lives. I love to explore different technologies, work on different projects and am always ready to collaborate with others. I have been practicing coding and development for few years now, and have acquired enough problem solving and development skills. Outside of the professional space, In my free time I love watching anime and spend time with family and friends. Sports being an unseparable things along with some good music is what keeps me sane and active after hours of screen time. I enjoy solving real life problems and building cross-platform applications. So feel free to connect with me, and make earth a better place to live by collaborating on some really cool and helpfull projects.",
                        style: GoogleFonts.montserrat().copyWith(
                          letterSpacing: 1.2,
                          height: 2,
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: width > 760 ? width * 0.01 : 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: width * 0.45,
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    Text(
                      "Technologies I have worked with:",
                      style: GoogleFonts.montserrat().copyWith(
                        color: Colors.red,
                        fontSize: width > 660 ? width * 0.015 : 10,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      // width: double.infinity,
                      width: width * 0.42 - 15,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Tech(
                            tech: "Flutter",
                            phoneView: false,
                          ),
                          Expanded(child: SizedBox()),
                          Tech(
                            tech: "Firebase",
                            phoneView: false,
                          ),
                          Expanded(child: SizedBox()),
                          Tech(
                            tech: "Python",
                            phoneView: false,
                          ),
                          Expanded(child: SizedBox()),
                          Tech(
                            tech: "Tensorflow",
                            phoneView: false,
                          ),
                          Expanded(child: SizedBox()),
                          Tech(
                            tech: "Keras",
                            phoneView: false,
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Tech(
                            tech: "AWS",
                            phoneView: false,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      width: width * 0.45,
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    width < 700
                        ? SizedBox(
                            width: width * 0.45,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name:  Shubham Joshi",
                                  style: GoogleFonts.montserrat().copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize:
                                          width > 760 ? width * 0.012 : 10),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Age:  21",
                                  style: GoogleFonts.montserrat().copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: width > 760 ? width * 0.012 : 10,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Email:  joshishubham0301@gmail.com",
                                  style: GoogleFonts.montserrat().copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize:
                                          width > 760 ? width * 0.012 : 10),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "From:  Nagpur, Maharashtra, India.",
                                  style: GoogleFonts.montserrat().copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize:
                                          width > 760 ? width * 0.012 : 10),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            width: width * 0.45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name:  Shubham Joshi",
                                      style: GoogleFonts.montserrat().copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontSize:
                                              width > 760 ? width * 0.012 : 10),
                                    ),
                                    SizedBox(
                                      height: width > 760 ? width * 0.02 : 20,
                                    ),
                                    Text(
                                      "Age:  21",
                                      style: GoogleFonts.montserrat().copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize:
                                            width > 760 ? width * 0.012 : 10,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email:  joshishubham0301@gmail.com",
                                      style: GoogleFonts.montserrat().copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontSize:
                                              width > 760 ? width * 0.012 : 10),
                                    ),
                                    SizedBox(
                                      height: width > 760 ? width * 0.02 : 20,
                                    ),
                                    Text(
                                      "From:  Nagpur, Maharashtra, India.",
                                      style: GoogleFonts.montserrat().copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontSize:
                                              width > 760 ? width * 0.012 : 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
