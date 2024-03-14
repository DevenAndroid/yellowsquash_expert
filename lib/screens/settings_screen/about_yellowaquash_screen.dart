import 'package:flutter/material.dart';
import '../../resource/app_Assets.dart';
import '../../widgets/apptheme.dart';
import '../../widgets/back_app_bar.dart';

class AboutYellowSquashScreen extends StatefulWidget {
  const AboutYellowSquashScreen({super.key});

  @override
  State<AboutYellowSquashScreen> createState() => _AboutYellowSquashScreenState();
}

class _AboutYellowSquashScreenState extends State<AboutYellowSquashScreen> {
  List<bool> boolList = [true, false, false, false, false, false, false, false, false, false];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: backAppBar(title: "About Yellowsquash", context: context, backgroundColor: AppTheme.yellowColor),
      body: Theme(
        data: ThemeData(useMaterial3: true),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Image(
                  image: AssetImage(AppAssets.splash),
                  width: 120,
                ),
                const SizedBox(height: 10),
                const Text(
                  "About Yellowsquash",
                  style: TextStyle(color: AppTheme.blackcolor, fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Text(
                  "What is Yellowsquash and how it works",
                  style: TextStyle(color: Color(0xffA1A1A1), fontSize: 12, fontWeight: FontWeight.w400, height: 2),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: size.height * .004),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppTheme.backgroundcolor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: AppTheme.primaryColor)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "What is Yellowsquash?",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff595959),
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        currentIndex = index;
                                        setState(() {});
                                      },
                                      child: const Icon(Icons.keyboard_arrow_down_rounded))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * .01),
                          if (currentIndex == index)
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppTheme.backgroundcolor,
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(5, 5),
                                    color: Colors.grey.shade300,
                                    spreadRadius: .2,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                                child: const Text(
                                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here,",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA1A1A1),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
