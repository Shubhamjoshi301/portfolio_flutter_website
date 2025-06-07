import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptive_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart' as CarouselSlider;
import 'package:flutter_svg/flutter_svg.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
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
          decoration:const  BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/erx.png",
              ),
            ),
   
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
          decoration:const  BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/cover.gif",
              ),
            ),
          
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
          decoration: const BoxDecoration(
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/mymc.jpg",
              ),
            ),
         
          ),
        ),
      ),
    ];
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AdaptiveText(
                "Projects",
                style: GoogleFonts.montserrat().copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: width * 0.065,
                    fontWeight: FontWeight.normal),
              ),
              Theme.of(context).colorScheme.primary ==
                      const Color.fromARGB(255, 0, 0, 0)
                  ? SvgPicture.asset(
                      "assets/images/eyeHair.svg",
                      color: Colors.white,
                      height: width * 0.07,
                    )
                  : SvgPicture.asset(
                      "assets/images/eyeHair.svg",
                      height: width * 0.07,
                    )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            // width: width * 0.8,
            child: CarouselSlider.CarouselSlider(
              options: CarouselSlider.CarouselOptions(
                height: 160,
                autoPlay: !isHover,
                aspectRatio: 2,
                viewportFraction: 0.72,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeStrategy: CarouselSlider.CenterPageEnlargeStrategy.scale,
              ),
              items: items,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
