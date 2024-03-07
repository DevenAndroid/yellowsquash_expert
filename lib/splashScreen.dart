// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:get/get_utils/get_utils.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   final controller = PageController(initialPage: 0);
//
//   var activepage = 1;
//
//   List<Widget> pages = [
//     const splashScreenfirst(),
//     const splashScreensecond(),
//     const splashScreenthird(),
//     const splashScreenfourth()
//   ];
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     controller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         PageView.builder(
//             controller: controller,
//             itemCount: pages.length,
//             onPageChanged: (int pages) {
//               setState(() {
//                 activepage = pages;
//               });
//             },
//             itemBuilder: (context, index) {
//               return pages[index % pages.length];
//             }),
//         Positioned(
//           height: 320,
//           top: 0,
//           left: 0,
//           right: 0,
//           child: Container(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:
//                 List<Widget>.generate(
//                   pages.length,
//                   (index) => Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: InkWell(
//                       onTap: () {
//                         controller.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.easeIn);
//                       },
//                       child: CircleAvatar(
//                         radius: 5,
//                         backgroundColor: activepage == index ?
//                         Colors.amber : Colors.grey,
//                       ),
//                     ),
//                   ),
//                 )
//
//             ),
//           ),
//         )
//       ],
//     ));
//   }
// }
//
// class splashScreenfirst extends StatefulWidget {
//   const splashScreenfirst({super.key});
//
//   @override
//   State<splashScreenfirst> createState() => _splashScreenfirstState();
// }
//
// class _splashScreenfirstState extends State<splashScreenfirst> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: Get.height,
//                   width: Get.width,
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Image.asset('assets/images/round.png'),
//                 ),
//                 Positioned(
//                   bottom: 10,
//                   left: 0,
//                   right: 0,
//                   child: Image.asset('assets/images/firstimage.png'),
//                 ),
//                 const Positioned(
//                   top: 50,
//                   left: 30,
//                   right: 30,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Programs for Treating the Untreatable',
//                       style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class splashScreensecond extends StatefulWidget {
//   const splashScreensecond({super.key});
//
//   @override
//   State<splashScreensecond> createState() => _splashScreensecondState();
// }
//
// class _splashScreensecondState extends State<splashScreensecond> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: Get.height,
//                   width: Get.width,
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Image.asset('assets/images/round.png'),
//                 ),
//                 Positioned(
//                   bottom: 10,
//                   left: 0,
//                   right: 0,
//                   child: Image.asset('assets/images/secondimage.png'),
//                 ),
//                 const Positioned(
//                   top: 50,
//                   left: 30,
//                   right: 30,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       'FREE Intro Sessions before joining',
//                       style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class splashScreenthird extends StatefulWidget {
//   const splashScreenthird({super.key});
//
//   @override
//   State<splashScreenthird> createState() => _splashScreenthirdState();
// }
//
// class _splashScreenthirdState extends State<splashScreenthird> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: Get.height,
//                   width: Get.width,
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Image.asset('assets/images/round.png'),
//                 ),
//                 Positioned(
//                   bottom: 10,
//                   left: 0,
//                   right: 0,
//                   child: Image.asset('assets/images/thirdimage.png'),
//                 ),
//                 const Positioned(
//                   top: 50,
//                   left: 30,
//                   right: 30,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Blogs on Health & Wellness',
//                       style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class splashScreenfourth extends StatefulWidget {
//   const splashScreenfourth({super.key});
//
//   @override
//   State<splashScreenfourth> createState() => _splashScreenfourthState();
// }
//
// class _splashScreenfourthState extends State<splashScreenfourth> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: Get.height,
//                   width: Get.width,
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Image.asset('assets/images/round.png'),
//                 ),
//                 Positioned(
//                   bottom: 10,
//                   left: 0,
//                   right: 0,
//                   child: Image.asset('assets/images/fourimage.png'),
//                 ),
//                 const Positioned(
//                   top: 50,
//                   left: 30,
//                   right: 30,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Consultations with Health Experts',
//                       style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
