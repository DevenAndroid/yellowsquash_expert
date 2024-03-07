import 'package:cached_network_image/cached_network_image.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:yellowsquash_expert/screens/webinar_screen/webinarDetailsScreen.dart';

import '../widgets/apptheme.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
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
    setState(() {

    });
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
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Videos',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Created on 20.04.2022',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xff444444)),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.edit,
                        color: AppTheme.grayColor,
                      ),
                      const Icon(
                        Icons.delete_outline,
                        color: Color(0xff22C55E),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // Return the dialog box widget
                          return AlertDialog(
                            title:  Container(
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
                          );
                        },
                      );
                    },
                    child: SizedBox(
                        height: 130,
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
                                      height: 10,
                                    ),
                                    Text(
                                      "Nutrition",
                                      style: GoogleFonts.poppins(
                                          color: const Color(0xff595959), fontWeight: FontWeight.w400, fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Weight Loss with Ketogenic Diet",
                                      style: GoogleFonts.poppins(
                                          color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 16),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "DRAFT",
                                      style: GoogleFonts.poppins(
                                          color: const Color(0xff444444), fontWeight: FontWeight.w400, fontSize: 12),
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
      ),
    );
  }
}
