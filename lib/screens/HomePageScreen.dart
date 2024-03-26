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

  int _currentIndex = 0;

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
        extendBody: true,
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
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff0EA89D),
                  Color(0x54049c91),
                ])),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Are You Struggling with Bloating, IBS, or SIBO?',
                        style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: CachedNetworkImage(
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '​“I believe in the body’s inherent ability to establish, maintain, and restore health. My role is to facilitate and augment this process, to identify and remove obstacles to health and recovery, and to support the creation of a healthy internal and external environment. My joy is in watching my patients regain themselves and thrive.”',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xff595959)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '– Dr. Priti Nanda Sibal',
                            style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'A Holistic Treatment Approach',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
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
                      "Lorem ipsum dolor sit amet consectetur. Dignissim amet condimentum pulvinar lacinia sed porttitor id. Ullamcorper quam nunc ipsum est nisi vel. Vulputate etiam a cras quam. Diam in cras ultricies hendrerit a risus id. Sollicitudin mattis pulvinar porttitor scelerisque sit viverra ipsum.In est nunc amet in fringilla pulvinar arcu dapibus velit etiam.Lorem ipsum dolor sit amet consectetur. Dignissim amet condimentum pulvinar lacinia sed porttitor id. Ullamcorper quam nunc ipsum est nisi vel.",
                      style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
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
                        'Read More',
                        style:
                            GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                      )),
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
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(5, 5),
                            color: Colors.grey.shade300,
                            spreadRadius: .5,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center, // Centered the column items
                        children: [
                          Container(
                            width: 140,
                            height: 120, // Added width to the container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(5, 5),
                                  color: Colors.grey.shade300,
                                  spreadRadius: .5,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                fit: BoxFit.cover,
                                errorWidget: (_, __, ___) => const Icon(
                                  Icons.category,
                                  color: Color(0xff22C55E),
                                ),
                                placeholder: (_, __) => const SizedBox(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Flexible(
                            child: Text(
                              "Irritable Bowel \n Syndrome",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'What Our Client Says ',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              ImageSlider(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Featured In',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (index, context) {
                      return Image.asset(
                        'assets/images/assocham.png',
                        height: 80,
                        width: 120,
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Our Workshops',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 272,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (index, context) {
                      return Container(
                        width: 200,
                        margin: const EdgeInsets.only(left: 10),
                        // height: 320,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
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
                                Image.asset(
                                  'assets/images/doctor.png',
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 150,
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
                                  "Functional Medicine Program For Digestive...",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  width: 150,
                                  height: 40,
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0EA89D), borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Buy',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
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
              SizedBox(
                height: 272,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (index, context) {
                      return Container(
                        width: 200,
                        margin: const EdgeInsets.only(left: 10),
                        // height: 320,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
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
                                Image.asset(
                                  'assets/images/doctor.png',
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 150,
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
                                  "Functional Medicine Program For Digestive...",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  width: 150,
                                  height: 40,
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0EA89D), borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Buy',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Our Latest Blogs',
                style: GoogleFonts.oswald(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 156,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10), // Added padding
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          // height: 150,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(5, 5),
                                color: Colors.grey.shade300,
                                spreadRadius: .5,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                  height: 100,
                                  fit: BoxFit.cover,
                                  errorWidget: (_, __, ___) => const Icon(
                                    Icons.category,
                                    color: Color(0xff22C55E),
                                  ),
                                  placeholder: (_, __) => const SizedBox(),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Center(
                                child: Text(
                                  "Bone Elderly",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold, color: AppTheme.headlineColor),
                                ),
                              ),
                              const Center(
                                child: Text(
                                  "Lung",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold, color: AppTheme.headlineColor),
                                ),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CarouselSlider(
                            carouselController: carouselController, // Give the controller
                            options: CarouselOptions(
                              autoPlay: true,
                              height: 150,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                // Implement logic to change dot color here
                                // You can use setState to update the color based on the current index
                              },
                            ),
                            items: featuredImages.map((featuredImage) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(featuredImage.imageUrl),
                                      //   Assets(
                                      //   featuredImage.imageUrl,
                                      fit: BoxFit.cover,
                                      // height: 150,
                                      // width: Get.width,
                                      // ),
                                    )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Start Your Healing Journey!",
                                            style: GoogleFonts.oswald(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8), color: Colors.white),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
                                                  child: Row(
                                                    children: [
                                                      Center(
                                                          child: Text(
                                                        "Book Now",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      )),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(Icons.arrow_forward)
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
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

  Widget ImageSlider() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(5, 5),
                    color: Colors.grey.shade300,
                    spreadRadius: .5,
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(11),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CarouselSlider(
                      carouselController: carouselController, // Give the controller
                      options: CarouselOptions(
                        autoPlay: true,
                        height: 120,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          // Implement logic to change dot color here
                          // You can use setState to update the color based on the current index
                        },
                      ),
                      items: featuredImages.map((featuredImage) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              width: Get.width,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          maxRadius: 20,
                                          minRadius: 20,
                                          child: Image.asset('assets/images/doctor.png'),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Patient Name',
                                              style: TextStyle(
                                                  color: Color(0xff0EA89D), fontSize: 14, fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              'Location',
                                              style: TextStyle(
                                                  color: Color(0xff0EA89D), fontSize: 10, fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      'Lorem ipsum dolor sit amet consectetur. Nulla et a tristique nisi. Dolor id diam hac tristique rutrum. Facilisis non quis porttitor.',
                                      style: TextStyle(
                                          color: AppTheme.grayColor, fontWeight: FontWeight.w400, fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 10), // Space for dot indicators
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: featuredImages.map((featuredImage) {
                int index = featuredImages.indexOf(featuredImage);
                return Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? AppTheme.yellowColor : Colors.grey.shade400,
                  ),
                );
              }).toList(),
            ),
          ],
        )
      ],
    );
  }
}

class ImageModel {
  final String name;
  final String imageUrl;
  final int count;

  ImageModel({required this.name, required this.imageUrl, required this.count});
}
