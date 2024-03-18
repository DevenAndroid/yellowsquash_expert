import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
  CarouselController carouselController = CarouselController();

  // final featuredImages = [
  //   'assets/images/doctor.jpeg',
  //   'assets/images/doctor.png',
  //   'assets/images/doctor.jpeg'
  // ];

  static List<ImageModel> featuredImages = [
    ImageModel(name: "Dr. Indira Priyadarshini", imageUrl: "assets/images/doctor.jpeg", count: 100),
    ImageModel(name: "Dr. Indira Priyadarshini", imageUrl: "assets/images/doctor.png", count: 102),
    ImageModel(name: "Dr. Indira Priyadarshini", imageUrl: "assets/images/doctor.jpeg", count: 104),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppTheme.backgroundcolor,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: AppTheme.backgroundcolor,
          // leading: Image.asset('assets/images/doctorlogo.png', height: 100),
          // actions: const [Icon(Icons.menu)],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.greenColor),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const BookAppointmentScreen());
                      },
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.only(left: 80, right: 80),
                        decoration: BoxDecoration(
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
                            borderRadius: BorderRadius.circular(11),
                            gradient: const LinearGradient(colors: [
                              Color(0xabf9d121),
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
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topRight: Radius.circular(6)),
                  child: CachedNetworkImage(
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
                ),
              ),
              const SizedBox(
                height: 20,
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
                      height: 20,
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
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Conditions We Cover',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                                margin: const EdgeInsets.only(left: 15, right: 15),
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
              Text(
                'Our Workshops',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 280,
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              // height: 320,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(5, 5),
                                    color: Colors.grey.shade300,
                                    spreadRadius: .5,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CarouselSlider(
                                        carouselController: carouselController, // Give the controller
                                        options: CarouselOptions(autoPlay: true, height: 200, viewportFraction: 4),
                                        items: featuredImages.map((featuredImage) {
                                          return Image.asset(
                                            featuredImage.imageUrl,
                                            fit: BoxFit.cover,
                                            height: 200,
                                            width: 280,
                                          );
                                        }).toList(),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        children: [
                                          RatingBarIndicator(
                                            rating: 4,
                                            itemCount: 5,
                                            itemSize: 20.0,
                                            unratedColor: Colors.grey,
                                            physics: const BouncingScrollPhysics(),
                                            itemBuilder: (context, _) => const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ),
                                          const Text(
                                            " 4.9 Reviews",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff595959),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Dr. Indira Priyadarshini",
                                        style: GoogleFonts.poppins(
                                            fontSize: 20, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/calender.png',
                                            height: 20,
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          const Expanded(
                                            child: Text(
                                              "Feb 7, 2024 | 7:30 PM - 9:00 PM ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppTheme.blackcolor),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/languaage.png',
                                            height: 20,
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          const Text(
                                            "English, Hindi",
                                            style: TextStyle(
                                                fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '₹ 299',
                                            style: GoogleFonts.oswald(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xff0EA89D)),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 40,
                                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                                            decoration: BoxDecoration(
                                                color: const Color(0xff0EA89D),
                                                borderRadius: BorderRadius.circular(15)),
                                            child: Center(
                                              child: Text(
                                                'Buy',
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: -50,
                              top: 150,
                              child: IconButton(
                                onPressed: () {
                                  carouselController.previousPage();
                                },
                                icon: const CircleAvatar(
                                    backgroundColor: Color(0xffFFE575),
                                    maxRadius: 12,
                                    minRadius: 12,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ))),
                              ),
                            ),
                            Positioned(
                              right: -50,
                              top: 150,
                              child: IconButton(
                                onPressed: () {
                                  carouselController.previousPage();
                                },
                                icon: const CircleAvatar(
                                    backgroundColor: Color(0xffFFE575),
                                    maxRadius: 12,
                                    minRadius: 12,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Our Programs',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 280,
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              // height: 320,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(5, 5),
                                    color: Colors.grey.shade300,
                                    spreadRadius: .5,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CarouselSlider(
                                        carouselController: carouselController, // Give the controller
                                        options: CarouselOptions(autoPlay: true, height: 200, viewportFraction: 4),
                                        items: featuredImages.map((featuredImage) {
                                          return Image.asset(
                                            featuredImage.imageUrl,
                                            fit: BoxFit.cover,
                                            height: 200,
                                            width: 280,
                                          );
                                        }).toList(),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        children: [
                                          RatingBarIndicator(
                                            rating: 4,
                                            itemCount: 5,
                                            itemSize: 20.0,
                                            unratedColor: Colors.grey,
                                            physics: const BouncingScrollPhysics(),
                                            itemBuilder: (context, _) => const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ),
                                          const Text(
                                            " 4.9 Reviews",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff595959),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Dr. Indira Priyadarshini",
                                        style: GoogleFonts.poppins(
                                            fontSize: 20, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                      ),
                                      const SizedBox(height: 10),
                                      const Row(
                                        children: [
                                          Icon(Icons.language),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "English, Hindi",
                                            style: TextStyle(
                                                fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      const Row(
                                        children: [
                                          Icon(Icons.person),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "200 + Enrolled",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppTheme.blackcolor),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      const Row(
                                        children: [
                                          Icon(Icons.file_copy_outlined),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Sessions 11",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppTheme.blackcolor),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '₹ 1500',
                                            style: GoogleFonts.oswald(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xff0EA89D)),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 40,
                                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                                            decoration: BoxDecoration(
                                                color: const Color(0xff0EA89D),
                                                borderRadius: BorderRadius.circular(15)),
                                            child: Center(
                                              child: Text(
                                                'Buy',
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: -50,
                              top: 150,
                              child: IconButton(
                                onPressed: () {
                                  carouselController.previousPage();
                                },
                                icon: const CircleAvatar(
                                    backgroundColor: Color(0xffFFE575),
                                    maxRadius: 12,
                                    minRadius: 12,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ))),
                              ),
                            ),
                            Positioned(
                              right: -50,
                              top: 150,
                              child: IconButton(
                                onPressed: () {
                                  carouselController.previousPage();
                                },
                                icon: const CircleAvatar(
                                    backgroundColor: Color(0xffFFE575),
                                    maxRadius: 12,
                                    minRadius: 12,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Our Latest Blogs',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                                margin: const EdgeInsets.only(left: 15, right: 15),
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
                      ],
                    );
                  }),
              InkWell(
                onTap: () {
                  Get.to(const BookAppointmentScreen());
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 80, right: 80),
                  decoration: BoxDecoration(
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
                      borderRadius: BorderRadius.circular(11),
                      gradient: const LinearGradient(colors: [
                        Color(0xabf9d121),
                        Color(0xffFCE582),
                        Color(0xffF8D642),
                      ])),
                  child: Center(
                      child: Text(
                    'Book Appointment',
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  )),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageModel {
  final String name;
  final String imageUrl;
  final int count;

  ImageModel({required this.name, required this.imageUrl, required this.count});
}
