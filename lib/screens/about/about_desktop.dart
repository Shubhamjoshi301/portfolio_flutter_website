import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      width: width * 0.5,
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
                      width: width * 0.5,
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
                    const Divider(
                      // color: Colors.white,
                      // height: 20,
                    ),
                    Text(
                      "Technologies I have worked with:",
                      style: GoogleFonts.montserrat()
                          .copyWith(color: Colors.red, fontSize: 14),
                    ),
                    const Divider(
                      // color: Colors.white,
                      // height: 20,
                      thickness: 2,
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
