import 'package:cached_network_image/cached_network_image.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import '../../../widgets/apptheme.dart';

class WebinarDetailsScreen extends StatefulWidget {
  const WebinarDetailsScreen({super.key});

  @override
  State<WebinarDetailsScreen> createState() => _WebinarDetailsScreenState();
}

class _WebinarDetailsScreenState extends State<WebinarDetailsScreen> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

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
      body: SingleChildScrollView(
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
                    style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.greenColor, fontWeight: FontWeight.w500),
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
                        child: Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                          child: Column(
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
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: DecoratedBox(
                                    decoration: const BoxDecoration(color: Color(0xff2D2D2D)),
                                    child: SizedBox(
                                      height: 20,
                                      width: Get.width,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(color: Colors.black),
                                        child: Text(
                                          'Days',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
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
                        child: Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                          child: Column(
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
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: DecoratedBox(
                                    decoration: const BoxDecoration(color: Color(0xff2D2D2D)),
                                    child: SizedBox(
                                      height: 20,
                                      width: Get.width,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(color: Colors.black),
                                        child: Text(
                                          'Hours',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
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
                        child: Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                          child: Column(
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
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: DecoratedBox(
                                    decoration: const BoxDecoration(color: Color(0xff2D2D2D)),
                                    child: SizedBox(
                                      height: 20,
                                      width: Get.width,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(color: Colors.black),
                                        child: Text(
                                          'Minutes',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
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
                        child: Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                          child: Column(
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
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: DecoratedBox(
                                    decoration: const BoxDecoration(color: Color(0xff2D2D2D)),
                                    child: SizedBox(
                                      height: 20,
                                      width: Get.width,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(color: Colors.black),
                                        child: Text(
                                          'Seconds',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(
                                                0xffF9D121,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
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
                    height: 40,
                  ),
                  Text(
                    'The 90 minutes interactive session will cover:',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14, color: AppTheme.blackcolor),
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
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '${index + 1}',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500, fontSize: 60, color: AppTheme.grayColor),
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
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/right.png'),
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
                                        color: AppTheme.grayColor, fontWeight: FontWeight.w400, fontSize: 9),
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
                                        color: AppTheme.blackcolor, fontWeight: FontWeight.w400, fontSize: 10),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit suscipit tellus orci ornare amet, ",
                                    style: GoogleFonts.poppins(
                                        color: AppTheme.blackcolor, fontWeight: FontWeight.w400, fontSize: 10),
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
                      "Diabetes Reversal Experiences , ",
                      style: GoogleFonts.poppins(color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: CircleAvatar(
                      maxRadius: 40,
                      minRadius: 40,
                      backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Bhavesh Patel",
                      style: GoogleFonts.poppins(color: AppTheme.blackcolor, fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu etiam nisi, dolor elementum odio malesuada volutpat. Et amet.",
                        style:
                            GoogleFonts.poppins(color: AppTheme.grayColor, fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            foregroundColor: const Color(0xffFFE575),
                            backgroundColor: const Color(0xffF9D121),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            )),
                        child: const Center(
                            child: Row(
                          children: [
                            Text("Play Video",
                                style:
                                    TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor)),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.play_circle,
                              color: AppTheme.blackcolor,
                              size: 20,
                            )
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
