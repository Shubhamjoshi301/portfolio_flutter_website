// import 'package:flutter/material.dart';
// import 'package:portfolio/widgets/social_icon.dart';

// class SocialBarAnimator extends StatefulWidget {
//   /// Child to be animated on entrance

//   /// Delay after which the animation will start
//   final Duration delay;

//   /// Duration of entrance animation
//   final Duration duration;

//   /// Starting point from which the widget will fade to its default position
//   final Offset offset;

//   const SocialBarAnimator({
//     Key? key,
//     this.delay = const Duration(milliseconds: 1000),
//     this.duration = const Duration(milliseconds: 000),
//     this.offset = const Offset(0.0, 0.0),
//   }) : super(key: key);

//   @override
//   SocialBarAnimatorState createState() {
//     return SocialBarAnimatorState();
//   }
// }

// class SocialBarAnimatorState extends State<SocialBarAnimator>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//     duration: const Duration(seconds: 1),
//     vsync: this,
//   )..repeat(reverse: true);
//   late final Animation<Offset> _offsetAnimation = Tween<Offset>(
//     begin: Offset.zero,
//     end: const Offset(0, 1),
//   ).animate(CurvedAnimation(
//     parent: _controller,
//     curve: Curves.easeInCubic,
//   ));

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {

//        const kSocialIcons = [
//       "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
//       "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
//       "https://img.icons8.com/android/480/ffffff/twitter.png",
//       "https://img.icons8.com/metro/308/ffffff/linkedin.png",
//       "https://img.icons8.com/material-rounded/384/ffffff/github.png",
//     ];
//     const kSocialLinks = [
//       "https://www.facebook.com/profile.php?id=100005460554654",
//       "https://www.instagram.com/__shubhamj.35__/?hl=en",
//       "https://twitter.com/Shubham5_3",
//       "https://www.linkedin.com/in/shubham-joshi-471195191/",
//       "https://github.com/Shubhamjoshi301",
//     ];


//     Widget _renderSocialBar(){
//       return Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Align(
//           alignment: Alignment.bottomLeft,
//           child: Container(
//             decoration: const BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40))),
//             alignment: Alignment.center,
//             width: 60,
//             margin: const EdgeInsets.symmetric(horizontal: 20),
//             height: 600,
//             // color: Colors.grey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                 kSocialIcons.length,
//                 (index) => SocialMediaIconBtn(
//                   icon: kSocialIcons[index],
//                   socialLink: kSocialLinks[index],
//                   height: 40,
//                   horizontalPadding: 0.1,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//     }

    


 
//     return AnimatedSwitcher(
//       duration: const Duration(seconds: 2),
//       child: 
//     );
//   }
// }
