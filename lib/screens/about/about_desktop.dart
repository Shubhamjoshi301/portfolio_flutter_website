import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tech.dart';

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
          AdaptiveText(
            "About Me",
            style: GoogleFonts.montserrat().copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: width > 900 ? width * 0.03 : 12,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 600,
                width: width * 0.42 - 15,
                // color: Colors.amber,
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
                        "I am Shubham Joshi, Computer Science Engineer, Tech enthusiastic and Something.",
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
                        "I am Shubham Joshi, Computer Science Engineer, Tech enthusiastic and Something. sdnfjkwwifn fndjfsdjf skfnsjof srguhsbfs f shf sjnf shfsjf sjnf shf sujf sjf shd fsujf sdjf shidf sudf sdjnf sdif sudfsd fsh fsdhfdhf sdhi fsihf sdh fsjid fsdhnf sh fsdji fshf sdh fsdj fsif sf sdijf sijdf sdf sdjf sjid fsiudf sdjf sdijf sidf sdihf sidf sdijf sdif sdif sdijf sdjf sdijf sdij nkf wuof snf wuf snk fwsf sfbseof rhfbsejf sfnsjnf wseuf rjhfbwekof werifnejn fweuf webhfbwejfwikfnwenf weiuf wejbhfweijf ",
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Tech(tech: "Flutter"),
                          Expanded(child: SizedBox()),
                          Tech(tech: "Firebase"),
                          Expanded(child: SizedBox()),
                          Tech(tech: "Python"),
                          Expanded(child: SizedBox()),
                          Tech(tech: "Tensorflow"),
                          Expanded(child: SizedBox()),
                          Tech(tech: "Keras"),
                          Expanded(child: SizedBox()),
                          Tech(tech: "AWS"),
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
                                      height: width > 760 ? width * 0.06 : 30,
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
                                      height: width > 760 ? width * 0.06 : 30,
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
