import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yellowsquash_expert/widgets/common_text_field.dart';
import '../../widgets/apptheme.dart';
import 'dart:io';

class RaiseQueryList extends StatefulWidget {
  const RaiseQueryList({super.key});
  static String raiseQueryList = "/raiseQueryList";

  @override
  State<RaiseQueryList> createState() => _RaiseQueryListState();
}

class _RaiseQueryListState extends State<RaiseQueryList> {
  final queryController = TextEditingController();
  Rx<List<File>> images = Rx<List<File>>([]);

  List<File> selectedImages = [];
  final picker = ImagePicker();
  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;
    if (xfilePick.isNotEmpty) {
      for (var i = 0; i < xfilePick.length; i++) {
        selectedImages.add(File(xfilePick[i].path));
      }
      setState(
        () {},
      );
    } else {}
  }

  bool addAnswer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.yellowColor,
        iconTheme: const IconThemeData(color: AppTheme.blackcolor),
        title: Text(
          "Queries",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w500, fontSize: 20, color: AppTheme.blackcolor),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                // Get.toNamed(RaiseQuery.raiseQuery);
              },
              child: const Icon(Icons.add, size: 25)),
          const SizedBox(width: 10),
        ],
      ),
      body: Theme(
        data: ThemeData(useMaterial3: true),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                          errorWidget: (_, __, ___) => const Icon(Icons.person),
                          placeholder: (_, __) => const SizedBox(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Swami Rajvibhu",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.primaryColor),
                        ),
                        Text(
                          "24 minutes ago",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PopupMenuButton<int>(
                              icon: const Icon(
                                Icons.more_horiz_rounded,
                                color: Colors.grey,
                              ),
                              color: Colors.white,
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem(
                                    value: 1,
                                    onTap: () {
                                      addAnswer = !addAnswer;
                                      setState(() {});
                                    },
                                    child: const Text("Add"),
                                  ),
                                  PopupMenuItem(
                                    value: 1,
                                    onTap: () {},
                                    child: const Text("Edit"),
                                  ),
                                  PopupMenuItem(
                                    value: 1,
                                    onTap: () {},
                                    child: const Text("Delete"),
                                  ),
                                ];
                              }),
                        ],
                      ),
                      const Icon(Icons.clear_outlined, color: Colors.grey),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "I have a query.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
              ),
              const SizedBox(height: 10),
              const Text(
                "Dignissim orci vulputate varius sapien. Sed sed dui scelerisque massa tristique purus, egestas congue. Dignissim non feugiat bibendum suspendisse. Dolor consequat senectus turpis dui. Diam morbi faucibus sit massa?",
                style: TextStyle(color: AppTheme.subTitleColor, fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              if (addAnswer == true)
                SearchTextFieldWidget(
                  hint: "Write an answer",
                  prefixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.edit,size: 20,color: Colors.grey)),
                ),
              const SizedBox(height: 10),
              answers()
            ],
          ),
        )),
      ),
    );
  }

  bool checkValue = false;
  Widget answers() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            checkValue = !checkValue;
            setState(() {});
          },
          child: Row(
            children: [
              const Text(
                "4 Answers",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
              ),
              Icon(checkValue == true ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded)
            ],
          ),
        ),
        if (checkValue == true)
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                    "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                errorWidget: (_, __, ___) => const Icon(Icons.person),
                                placeholder: (_, __) => const SizedBox(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Swami Rajvibhu",
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.primaryColor),
                                  ),
                                  Text(
                                    "   24 minutes ago",
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices rhoncus arcu.",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up_off_alt,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    " 2   Reply",
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
      ],
    );
  }
}
