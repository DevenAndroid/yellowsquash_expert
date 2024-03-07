import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = PageController(initialPage: 0);

  var activepage = 1;

  List<Widget> pages = [
  Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  Stack(
  children: [
  Container(
  height: Get.height,
  width: Get.width,
  ),
  Positioned(
  bottom: 0,
  left: 0,
  right: 0,
  child: Image.asset('assets/images/call.png'),
  ),
  Positioned(
  bottom: 10,
  left: 0,
  right: 0,
  child: Image.asset('assets/images/doctor.png'),
  ),
  const Positioned(
  top: 50,
  left: 30,
  right: 30,
  child: Align(
  alignment: Alignment.center,
  child: Text(
  'Programs for Treating the Untreatable',
  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
  ),
  ),
  ),
  ],
  )
  ],
  ),
  Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  Stack(
  children: [
  Container(
  height: Get.height,
  width: Get.width,
  ),
  Positioned(
  bottom: 0,
  left: 0,
  right: 0,
  child: Image.asset('assets/images/round.png'),
  ),
  Positioned(
  bottom: 10,
  left: 0,
  right: 0,
  child: Image.asset('assets/images/secondimage.png'),
  ),
  const Positioned(
  top: 50,
  left: 30,
  right: 30,
  child: Align(
  alignment: Alignment.center,
  child: Text(
  'FREE Intro Sessions before joining',
  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
  ),
  ),
  ),
  ],
  )
  ],
  ),
  Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  Stack(
  children: [
  Container(
  height: Get.height,
  width: Get.width,
  ),
  Positioned(
  bottom: 0,
  left: 0,
  right: 0,
  child: Image.asset('assets/images/round.png'),
  ),
  Positioned(
  bottom: 10,
  left: 0,
  right: 0,
  child: Image.asset('assets/images/thirdimage.png'),
  ),
  const Positioned(
  top: 50,
  left: 30,
  right: 30,
  child: Align(
  alignment: Alignment.center,
  child: Text(
  'Blogs on Health & Wellness',
  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
  ),
  ),
  ),
  ],
  )
  ],
  ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset('assets/images/round.png'),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Image.asset('assets/images/fourimage.png'),
            ),
            const Positioned(
              top: 50,
              left: 30,
              right: 30,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Consultations with Health Experts',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  ];

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
            controller: controller,
            itemCount: pages.length,
            onPageChanged: (int pages) {
              setState(() {
                activepage = pages;
              });
            },
            itemBuilder: (context, index) {
              return pages[index % pages.length];
            }),
        Positioned(
          height: 320,
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  pages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        controller.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: activepage == index ? Colors.amber : Colors.grey,
                      ),
                    ),
                  ),
                )),
          ),
        )
      ],
    )
    );
  }
}

