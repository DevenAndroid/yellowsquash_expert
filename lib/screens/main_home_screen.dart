import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/screens/HomePage.dart';
import 'package:yellowsquash_expert/screens/blog_screen/blogsScreen.dart';
import 'package:yellowsquash_expert/screens/myAccountScreen.dart';
import 'package:yellowsquash_expert/screens/patient_screen/patientDashboardScreen.dart';
import 'package:yellowsquash_expert/screens/program_screen/programmerScreen.dart';
import 'package:yellowsquash_expert/screens/queries_screen/queries_screen.dart';
import 'package:yellowsquash_expert/screens/settingScreen.dart';
import 'package:yellowsquash_expert/screens/teamScreen.dart';
import 'package:yellowsquash_expert/screens/videosScreen.dart';
import 'package:yellowsquash_expert/screens/webinar_screen/webinarsScreen.dart';
import '../controller/navbarcontroller.dart';
import '../resource/app_Assets.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final bottomController = Get.put(BottomNavController());
  bool isCheck = true;
  final pages = [
    const HomePageScreen(),
    const TeamScreen(),
    const HomePageScreen(),
    const MyAccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        // Show popup when navigating back
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Warning"),
              content: const Text("Are you sure you want to exit?"),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: const Text("No"),
                    onTap: () {
                      Navigator.of(context).pop(false); // Close the dialog
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: const Text("Yes"),
                    onTap: () {
                      SystemNavigator.pop();
                    },
                  ),
                ),
              ],
            );
          },
        );
        return false;
      },
      child: Theme(
          data: ThemeData(useMaterial3: true),
          child: Scaffold(
            key: bottomController.scaffoldKey,
            drawer: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Drawer(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                  child: Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      // physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: size.width,
                            color: const Color(0xffF9D121),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.06,
                                  top: size.height * 0.06,
                                  right: size.width * 0.01,
                                  bottom: size.height * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white, width: 2), shape: BoxShape.circle),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(100),
                                            child: CachedNetworkImage(
                                              fit: BoxFit.cover,
                                              imageUrl:
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJiaZKjOQS7I-ftDQKzagCOWIZUonEoHS-p4OpngN4lg&s",
                                              errorWidget: (_, __, ___) => const Icon(Icons.person),
                                              placeholder: (_, __) => const SizedBox(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.height * 0.02,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Test",
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.poppins(
                                                    fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500)),
                                            const Text("abc@gmail.comg",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400)),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * .01,
                                  ),
                                  Row(
                                    children: [
                                      Text("Logout",
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(
                                        width: size.width * .01,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.black,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .007,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: size.width * .06),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("My Resources",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                        fontSize: 18, color: const Color(0xff595959), fontWeight: FontWeight.w400)),
                                SizedBox(
                                  width: size.width * .01,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      isCheck = !isCheck;
                                      setState(() {});
                                    },
                                    child: Icon(
                                      isCheck == true ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                                      color: const Color(0xff595959),
                                      size: 20,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * .005,
                          ),
                          if (isCheck == true)
                            Column(
                              children: [
                                drawerTile(
                                    active: true,
                                    title: "Programs".tr,
                                    icon: const ImageIcon(AssetImage(AppAssets.program)),
                                    onTap: () {
                                      Get.to(()=>const ProgrammeScreen());
                                    }),
                                // drawerTile(
                                //     active: true,
                                //     title: "Events".tr,
                                //     icon: const ImageIcon(AssetImage(AppAssets.webinar)),
                                //     onTap: () {}),
                                const Divider(),
                                drawerTile(
                                    active: true,
                                    title: "Webinar".tr,
                                    icon: const ImageIcon(AssetImage(AppAssets.experts)),
                                    onTap: () {
                                      Get.to(()=>const WebinarsScreen());
                                    }),
                                const Divider(),
                                drawerTile(
                                    active: true,
                                    title: "Blog".tr,
                                    icon: const ImageIcon(AssetImage(AppAssets.healthpedia)),
                                    onTap: () {
                                      Get.to(()=>const BlogsScreen());
                                    }),
                              ],
                            ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                thickness: 8,
                                color: Colors.grey.shade300,
                              ),
                              drawerTile1(
                                  active: true,
                                  title: "Team".tr,
                                  onTap: () {
                                  bottomController.changePage(1);
                                  Get.back();
                                  }),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade300,
                              ),
                              drawerTile1(active: true, title: "Calender".tr, onTap: () {}),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade300,
                              ),
                              drawerTile1(
                                  active: true,
                                  title: "Patient Dashboard".tr,
                                  onTap: () {
                                    Get.to(() => const PatientDashboardScreen());
                                  }),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade300,
                              ),
                              drawerTile1(
                                  active: true,
                                  title: "Queries".tr,
                                  onTap: () {
                                    Get.to(() => const RaiseQueryList());
                                  }),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade300,
                              ),
                              drawerTile1(
                                  active: true,
                                  title: "Videos".tr,
                                  onTap: () {
                                    Get.to(() => const VideosScreen());
                                  }),
                              Divider(
                                thickness: 8,
                                color: Colors.grey.shade300,
                              ),
                              drawerTile1(
                                  active: true,
                                  title: "Settings".tr,
                                  onTap: () {
                                    Get.to(() => const SettingScreen());
                                  }),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade300,
                              ),
                              drawerTile1(active: true, title: "Privacy Policy".tr, onTap: () {}),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade300,
                              ),
                              drawerTile1(
                                  active: true,
                                  title: "Legal".tr,
                                  onTap: () {
                                    // Get.toNamed(RaiseQueryList.raiseQueryList);
                                  }),
                            ],
                          )
                          // SizedBox(height:20,)
                        ],
                      ),
                    ),
                  )),
            ),
            appBar: AppBar(
              surfaceTintColor: Colors.white,
              elevation: 10,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey.withOpacity(.2),
              title: const Image(image: AssetImage(AppAssets.splash)),
              centerTitle: true,
              leading: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    bottomController.scaffoldKey.currentState!.openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 30,
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(100)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJiaZKjOQS7I-ftDQKzagCOWIZUonEoHS-p4OpngN4lg&s",
                          errorWidget: (_, __, ___) => const Icon(Icons.person),
                          placeholder: (_, __) => const SizedBox(),
                        ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    const Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                    ),
                    Positioned(
                        right: 2,
                        top: 2,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color(0xff22C55E)),
                        )),
                  ],
                ),
                const SizedBox(width: 10)
              ],
            ),
            body: Obx(() {
              return pages.elementAt(bottomController.currentIndex.value);
            }),
            extendBody: true,
            backgroundColor: Colors.white,
            bottomNavigationBar: Obx(() {
              return BottomAppBar(
                  color: Colors.white,
                  shape: const CircularNotchedRectangle(),
                  clipBehavior: Clip.hardEdge,
                  elevation: 10,
                  shadowColor: Colors.grey,
                  padding: EdgeInsets.symmetric(horizontal: size.width * .005),
                  child: Theme(
                      data: ThemeData(
                          splashColor: Colors.transparent,
                          bottomNavigationBarTheme:
                              const BottomNavigationBarThemeData(backgroundColor: Colors.white, elevation: 0)),
                      child: BottomNavigationBar(
                          unselectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                          selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                          items: [
                            BottomNavigationBarItem(
                              icon: GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.home_outlined,
                                  size: 25,
                                ),
                              ),
                              label: 'Home',
                            ),
                            BottomNavigationBarItem(
                              icon: GestureDetector(
                                onTap: () {},
                                child: const ImageIcon(
                                  AssetImage(AppAssets.groups),
                                  size: 20,
                                ),
                              ),
                              label: 'My Team',
                            ),
                            BottomNavigationBarItem(
                                icon: GestureDetector(
                                  onTap: () async {},
                                  child: const Icon(
                                    Icons.chat_bubble_outline,
                                    size: 20,
                                  ),
                                ),
                                label: 'Chat'),
                            BottomNavigationBarItem(
                                icon: GestureDetector(
                                  onTap: () async {},
                                  child: const Icon(
                                    Icons.person_outline_outlined,
                                    size: 25,
                                  ),
                                ),
                                label: 'Account'),
                          ],
                          type: BottomNavigationBarType.fixed,
                          currentIndex: bottomController.currentIndex.value,
                          selectedItemColor: Colors.black,
                          iconSize: 40,
                          onTap: bottomController.changePage,
                          elevation: 0)));
            }),
          )),
    );
  }

  Widget drawerTile({required bool active, required String title, required Widget icon, required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: GestureDetector(
        // selectedTileColor: Colors.white,
        // leading: icon,
        // minLeadingWidth: 25,
        onTap: active ? onTap : null,
        // selectedTileColor: Colors.white,
        // leading: icon,
        // minLeadingWidth: 25,
        child: Row(
          children: [
            icon,
            const SizedBox(width: 10),
            Text(
              title,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerTile1({required bool active, required String title, required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
