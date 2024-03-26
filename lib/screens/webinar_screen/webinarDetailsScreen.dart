import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import '../../../widgets/apptheme.dart';
import '../HomePageScreen.dart';

class WebinarDetailsScreen extends StatefulWidget {
  const WebinarDetailsScreen({super.key});

  @override
  State<WebinarDetailsScreen> createState() => _WebinarDetailsScreenState();
}

class _WebinarDetailsScreenState extends State<WebinarDetailsScreen> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  CarouselController carouselController = CarouselController();

  int _currentIndex = 0;

  static List<ImageModel> featuredImages = [
    ImageModel(name: "Dr. Indira Priyadarshini", imageUrl: "assets/images/doctor.jpeg", count: 100),
    ImageModel(name: "Dr. Indira Priyadarshini", imageUrl: "assets/images/doctor.png", count: 102),
    ImageModel(name: "Dr. Indira Priyadarshini", imageUrl: "assets/images/doctor.jpeg", count: 104),
  ];
  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController =
        VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      additionalOptions: (context) {
        return <OptionItem>[
          OptionItem(
            onTap: () => debugPrint('Option 1 pressed!'),
            iconData: Icons.chat,
            title: 'Option 1',
          ),
          OptionItem(
            onTap: () => debugPrint('Option 2 pressed!'),
            iconData: Icons.share,
            title: 'Option 2',
          ),
        ];
      },
    );
    setState(() {});
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(
          useMaterial3: true
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.grey),
                    child: chewieController != null
                        ? Chewie(
                            controller: chewieController!,
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
                  ),
                  Positioned(
                      top: 30,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      )),
                  const Positioned(
                      top: 30,
                      right: 20,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kumbhak Therapy for Thyroid Reversal',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'By Swami Rajvibhu',
                      style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.subTitleColor, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu et ac odio lorem tincidunt ullamcorper dignissim u',
                      style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            '7:00 PM - 8:30 PM | Nov 26, 2021 (Friday)',
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: AppTheme.blackcolor, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Image.asset(
                          'assets/images/doctorkit.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 1,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Column(
                  children: [
                    Text(
                      'Webinar Starts in',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(
                            0xff2D2D2D,
                          ),
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 70,
                                width: 65,
                                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '0',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: const Color(
                                            0xff2D2D2D,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child:  SizedBox(
                                    width: 65,
                                    height: 20,
                                    child: DecoratedBox(
                                      decoration: const BoxDecoration(color: Colors.black),
                                      child: Center(
                                        child: Text(
                                          'Days',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          ':',
                          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 70,
                                width: 65,
                                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '7',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: const Color(
                                            0xff2D2D2D,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child:  SizedBox(
                                    width: 65,
                                    height: 20,
                                    child: DecoratedBox(
                                      decoration: const BoxDecoration(color: Colors.black),
                                      child: Center(
                                        child: Text(
                                          'Hours',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          ':',
                          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 70,
                                width: 65,
                                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '43',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: const Color(
                                            0xff2D2D2D,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child:  SizedBox(
                                    width: 65,
                                    height: 20,
                                    child: DecoratedBox(
                                      decoration: const BoxDecoration(color: Colors.black),
                                      child: Center(
                                        child: Text(
                                          'Minutes',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          ':',
                          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 70,
                                width: 65,
                                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '25',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: const Color(
                                            0xff2D2D2D,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child:  SizedBox(
                                    width: 65,
                                    height: 20,
                                    child: DecoratedBox(
                                      decoration: const BoxDecoration(color: Colors.black),
                                      child: Center(
                                        child: Text(
                                          'Seconds',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(left: 100, right: 100, top: 15, bottom: 15),
                        decoration: BoxDecoration(color: const Color(0xff0FA654), borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'START WEBINAR',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'The 90 minutes interactive session will cover:',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: AppTheme.blackcolor),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida sodales euismod elementum morbi suspendisse pharetra, pharetra nunc platea. Turpis diam ipsum et nullam sed tellus enim. Orci quis a nisl, nunc aliquet praesent. Euismod faucibus at consectetur semper lectus purus a viverra. Ultrices fringilla nisi, mi aenean. Enim turpis enim posuere ullamcorper ornare massa lorem egestas.',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, color: AppTheme.grayColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'What you’ll learn in this exclusive session:',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: AppTheme.blackcolor),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(top: 10),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${index + 1}',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500, fontSize: 30, color: AppTheme.grayColor),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Heading',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700, fontSize: 14, color: AppTheme.blackcolor),
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vestibulum in elit mauris. Bibendum morbi tempus erat tempus. Feugiat.',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400, fontSize: 12, color: AppTheme.grayColor),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          );
                        }),
                    Text(
                      'Who is it for?',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: AppTheme.blackcolor),
                    ),
                    ListView.builder(
                      padding: EdgeInsets.only(top: 10),
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/right.png',height: 20,),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Duis accumsan placerat id lacinia vitae pellentesque.',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400, fontSize: 12, color: AppTheme.grayColor),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          );
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'About Expert',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: AppTheme.blackcolor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 200,
                        child: Container(
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
                                      height: 15,
                                    ),
                                    Text(
                                      "Mental Health | Diets | Kid Therapeutic | Nutrition",
                                      style: GoogleFonts.poppins(
                                          color: AppTheme.grayColor, fontWeight: FontWeight.w400, fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Swami Rajvibhu",
                                      style: GoogleFonts.poppins(
                                          color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Kumbhak Therapy Pioneer & Kumbhak Yogi",
                                      style: GoogleFonts.poppins(
                                          color: AppTheme.blackcolor, fontWeight: FontWeight.w400, fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Flexible(
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit suscipit tellus orci ornare amet, ",
                                        style: GoogleFonts.poppins(
                                            color: AppTheme.blackcolor, fontWeight: FontWeight.w400, fontSize: 12),
                                      ),
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
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Diabetes Reversal Experiences",
                        style: GoogleFonts.poppins(color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
      Stack(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
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
                  borderRadius: BorderRadius.circular(6),
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
      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
