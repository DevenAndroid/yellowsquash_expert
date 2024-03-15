
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import '../../../widgets/apptheme.dart';
import '../../resource/app_Assets.dart';

class ProgrammeDetailsScreen extends StatefulWidget {
  const ProgrammeDetailsScreen({super.key});

  @override
  State<ProgrammeDetailsScreen> createState() => _ProgrammeDetailsScreenState();
}

class _ProgrammeDetailsScreenState extends State<ProgrammeDetailsScreen> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  List<bool> boolList = [true, false, false, false, false, false, false, false, false, false];
  List<bool> boolList2 = [true, false, false, false, false, false, false, false, false, false];

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
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: Get.width,
            padding: const EdgeInsets.only( top: 15, bottom: 15),
            decoration: BoxDecoration(color: const Color(0xff0FA654), borderRadius: BorderRadius.circular(0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Start Session 2',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                ),
                const SizedBox(width: 10,),
                const Icon(Icons.videocam_outlined,color: Colors.white,)
              ],
            ),
          ),
        ],
      ),
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
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Program starts on",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppTheme.grayColor,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "12 Aug 2021(Thu)",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppTheme.blackcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            RatingBarIndicator(
                              rating: 4,
                              itemCount: 5,
                              itemSize: 12.0,
                              unratedColor: Colors.grey,
                              physics: const BouncingScrollPhysics(),
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Image.asset(
                                AppAssets.rating,
                                color: AppTheme.topstar,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              " 4.9 Reviews",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff595959),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Diabetes Reversal with Kumbhak Therapy",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.blackcolor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "By Swami Rajvibhu",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff22C55E),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Duration 12 Weeks",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.blackcolor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Stack(
                          children: [
                            CircleAvatar(
                              maxRadius: 20,
                              minRadius: 20,
                              backgroundColor: Color(0xffF9D121),
                              child: Text(
                                'T',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              left: 25,
                              top: 0,
                              bottom: 0,
                              child: CircleAvatar(
                                maxRadius: 20,
                                minRadius: 20,
                                backgroundColor: Color(0xffADADAD),
                                child: Text(
                                  'p',
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60,
                              top: 0,
                              bottom: 0,
                              child: CircleAvatar(
                                maxRadius: 20,
                                minRadius: 20,
                                backgroundColor: Color(0xff525252),
                                child: Text(
                                  'k',
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "+ 350 Enrolled",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppTheme.blackcolor,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
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
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.messenger_outline,
                                color: Color(0xff22C55E),
                              ),
                              Text(
                                "Group Chat",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff22C55E),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(color: const Color(0xff0FA654), borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'PROGRAM IS LIVE',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppTheme.backgroundcolor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(
                                        1,
                                        1,
                                      ), //Offset
                                      blurRadius: 1,

                                      blurStyle: BlurStyle.normal,
                                      spreadRadius: 1,
                                    )
                                  ],
                                  // border: Border.all(color: AppTheme.primaryColor)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text(
                                        index == 0 ? "Overview" : index == 1 ? "How it works?" :"Structure",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff595959),
                                        ),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            boolList[index] = !boolList[index];
                                            setState(() {});
                                          },
                                          child: const Icon(Icons.keyboard_arrow_down_rounded))
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              if (boolList[index] == true)
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
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                    child: Text(
                                      "Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppTheme.subTitleColor,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Session ${index + 1} | Duration 90 mins",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppTheme.blackcolor,
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        boolList2[index] = !boolList2[index];
                                        setState(() {});
                                      },
                                      child: const Icon(Icons.keyboard_arrow_down_rounded)),
                                  const Spacer(),
                                  const Text(
                                    "20 Aug 2021",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppTheme.grayColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              if (boolList2[index] == true)
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Orientation',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppTheme.grayColor,
                                      ),
                                    ),
                                    Text(
                                      'Diagnosis form filling process',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppTheme.grayColor,
                                      ),
                                    ),
                                    Text(
                                      'Basic Kumbhak module',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppTheme.grayColor,
                                      ),
                                    ),
                                    Text(
                                      'Q&A',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppTheme.grayColor,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Diabetes Module ',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff22C55E),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.videocam_outlined,
                                          color: Color(0xff22C55E),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Kumbhak Practices ',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff22C55E),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.file_copy_outlined,
                                          color: Color(0xff22C55E),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Diet Chart',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff22C55E),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.file_copy_outlined,
                                          color: Color(0xff22C55E),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
