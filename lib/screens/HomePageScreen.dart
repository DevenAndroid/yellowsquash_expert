import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/screens/bookAppointment.dart';
import 'package:yellowsquash_expert/widgets/apptheme.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Introduction'),
              Tab(text: 'Approach'),
              Tab(text: 'Categories'),
            ],
          ),
          // leading: Image.asset('assets/images/doctorlogo.png', height: 100),
          // actions: const [Icon(Icons.menu)],
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        "https://www.shutterstock.com/image-photo/profile-photo-attractive-family-doc-600nw-1724693776.jpg",
                    fit: BoxFit.cover,
                    errorWidget: (_, __, ___) => const SizedBox(),
                    placeholder: (_, __) => Image.asset(
                      'assets/images/doctor.png',
                      color: Colors.grey.shade200,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        Text(
                          'Are You Struggling with Bloating, IBS, or SIBO?',
                          style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '​“I believe in the body’s inherent ability to establish, maintain, and restore health. My role is to facilitate and augment this process, to identify and remove obstacles to health and recovery, and to support the creation of a healthy internal and external environment. My joy is in watching my patients regain themselves and thrive.”',
                          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '– Dr. Priti Nanda Sibal',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.greenColor),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(const BookAppointmentScreen());
                          },
                          child: Container(
                            height: 50,
                            margin: const EdgeInsets.only(left: 50, right: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                gradient: const LinearGradient(colors: [
                                  Color(0xffF9D121),
                                  Color(0xffFCE582),
                                  Color(0xffF8D642),
                                ])),
                            child: Center(
                                child: Text(
                              'Book Appointment',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                            )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CachedNetworkImage(
                    imageUrl: "https://ling-app.com/wp-content/uploads/2023/03/bbody-parts-malayalam-ling-app-body.jpg",
                    fit: BoxFit.cover,
                    errorWidget: (_, __, ___) => const SizedBox(),
                    placeholder: (_, __) => Image.asset(
                      'assets/images/doctor.png',
                      color: Colors.grey.shade200,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        Text(
                          'A Holistic Treatment Approach',
                          style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur. Dignissim amet condimentum pulvinar lacinia sed porttitor id. Ullamcorper quam nunc ipsum est nisi vel. Vulputate etiam a cras quam. Diam in cras ultricies hendrerit a risus id. Sollicitudin mattis pulvinar porttitor scelerisque sit viverra ipsum.In est nunc amet in fringilla pulvinar arcu dapibus velit etiam.Lorem ipsum dolor sit amet consectetur. Dignissim amet condimentum pulvinar lacinia sed porttitor id. Ullamcorper quam nunc ipsum est nisi vel.",
                          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                            height: 130,
                            child: Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(
                                        0.2,
                                        0.2,
                                      ),
                                      blurRadius: 5,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 200,
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                              fit: BoxFit.cover,
                                              errorWidget: (_, __, ___) => const SizedBox(),
                                              placeholder: (_, __) => Image.asset(
                                                'assets/images/doctor.png',
                                                color: Colors.grey.shade200,
                                                height: 100,
                                                width: 100,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            top: 10,
                                            left: 10,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade400,
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Color(0xffCC3D36),
                                                  size: 15,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Irritable Bowel Syndrome",
                                          style: GoogleFonts.poppins(
                                              color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 14),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "Lorem ipsum dolor sit amet consectetur. Consequat quam nisl arcu pellentesque amet mauris sapien. Aliquet",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff444444),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
