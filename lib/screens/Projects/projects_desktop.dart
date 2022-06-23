import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsDesktop> createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      MouseRegion(
        onHover: (event) => setState(() {
          isHover = true;
        }),
        onExit: (event) => setState(() {
          isHover = false;
        }),
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/erx.png",
              ),
            ),
            border: Border.all(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
      MouseRegion(
        onHover: (event) => setState(() {
          isHover = true;
        }),
        onExit: (event) => setState(() {
          isHover = false;
        }),
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/cover.gif",
              ),
            ),
            border: Border.all(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
      MouseRegion(
        onHover: (event) => setState(() {
          isHover = true;
        }),
        onExit: (event) => setState(() {
          isHover = false;
        }),
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/mymc.jpg",
              ),
            ),
            border: Border.all(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
    ];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      constraints: BoxConstraints(minHeight: height),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.cen,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdaptiveText(
            "Projects",
            style: GoogleFonts.montserrat().copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: width > 900 ? width * 0.03 : 25,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(height: width > 760 ? 70 : 30),
          SizedBox(
            width: width * 0.8,
            child: CarouselSlider(
              options: CarouselOptions(
                height: width > 760 ? width * 0.3 : 200,
                autoPlay: !isHover,
                aspectRatio: 2,
                viewportFraction: 0.65,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
              ),
              items: items,
            ),
          ),
        ],
      ),
    );
  }
}
