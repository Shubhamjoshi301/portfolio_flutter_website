import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tech.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          AdaptiveText(
            "About Me",
            style: GoogleFonts.montserrat().copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: width > 760 ? width * 0.03 : 12,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 600,
                width: width * 0.42 - 15,
                color: Colors.amber,
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
                      style: GoogleFonts.montserrat()
                          .copyWith(color: Colors.red, fontSize: 18),
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
                          fontSize: 22,
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
                          fontSize: 14,
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
                      style: GoogleFonts.montserrat()
                          .copyWith(color: Colors.red, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Tech(tech: "Flutter"),
                        SizedBox(
                          width: 8,
                        ),
                        Tech(tech: "Firebase"),
                        SizedBox(
                          width: 8,
                        ),
                        Tech(tech: "Python"),
                        SizedBox(
                          width: 8,
                        ),
                        Tech(tech: "Tensorflow"),
                        SizedBox(
                          width: 8,
                        ),
                        Tech(tech: "Keras"),
                        SizedBox(
                          width: 8,
                        ),
                        Tech(tech: "AWS"),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      width: width * 0.45,
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    SizedBox(
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
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              Text(
                                "Age:  21",
                                style: GoogleFonts.montserrat().copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email:  joshishubham0301@gmail.com",
                                style: GoogleFonts.montserrat().copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              Text(
                                "From:  Nagpur, Maharashtra, India.",
                                style: GoogleFonts.montserrat().copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 14),
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
