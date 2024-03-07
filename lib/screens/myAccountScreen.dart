import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/addsize.dart';
import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';
import '../widgets/helper.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  bool showValidation = false;
  bool showValidationImg = false;
  Rx<List<File>> images = Rx<List<File>>([]);
  Rx<File> categoryFile = File("").obs;
  String? categoryValue;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(50)),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Text(
                        'Education Details',
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 150,
                  top: 0,
                  bottom: 0,
                  left: 0,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(50)),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text(
                          'Basic Details',
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10000),
                              child: Container(
                                  height: 100,
                                  width: 100,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFAAF40),
                                    border: Border.all(color: const Color(0xff3B5998), width: 6),
                                    borderRadius: BorderRadius.circular(5000),
                                    // color: Colors.brown
                                  ),
                                  child: Image.network(
                                    'https://www.nimswandoor.com/v2/images/doctor1.jpg',
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, __, ___) => CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: 'https://www.nimswandoor.com/v2/images/doctor1.jpg',
                                      height: AddSize.size30,
                                      width: AddSize.size30,
                                      errorWidget: (_, __, ___) => const Icon(
                                        Icons.person,
                                        size: 60,
                                      ),
                                      placeholder: (_, __) => const SizedBox(),
                                    ),
                                  ))),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 30,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xff04666E),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'Saikat Kumar',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Professional Title',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'eg. HAPPINESS COACH',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Short Bio',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'Short Bio',
                    minLines: 4,
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Email id',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'saikat.kumar@gmail.com',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mobile number',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: '9898989898',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Location',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppTheme.backgroundcolor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppTheme.greenColor)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Select location",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff595959),
                            ),
                          ),
                          GestureDetector(onTap: () {}, child: const Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Timezone',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppTheme.backgroundcolor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppTheme.greenColor)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Select timezone",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff595959),
                            ),
                          ),
                          GestureDetector(onTap: () {}, child: const Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Expertise',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppTheme.backgroundcolor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppTheme.greenColor)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Select expertise",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff595959),
                            ),
                          ),
                          GestureDetector(onTap: () {}, child: const Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Languages',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppTheme.backgroundcolor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppTheme.greenColor)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Select languages",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff595959),
                            ),
                          ),
                          GestureDetector(onTap: () {}, child: const Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Degree/ Certification',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppTheme.backgroundcolor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppTheme.greenColor)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Msc in Applied Nutrition",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff595959),
                            ),
                          ),
                          GestureDetector(onTap: () {}, child: const Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'College/ Institution',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'JJ College of Nutrition',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Completion Year',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppTheme.backgroundcolor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppTheme.greenColor)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.height * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "2014",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff595959),
                            ),
                          ),
                          GestureDetector(onTap: () {}, child: const Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Describe Your Education',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'Describe Your Education',
                    minLines: 4,
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Upload Degree/ Certificate',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(2),
                    padding: const EdgeInsets.only(
                        left: 40, right: 40, bottom: 10),
                    color: showValidationImg == false
                        ? const Color(0xFF019444)
                        : Colors.red,
                    dashPattern: const [6],
                    strokeWidth: 1,
                    child: InkWell(
                      onTap: () {
                        showActionSheet(context);
                      },
                      child: Obx(() {
                        if (categoryFile.value.path == "") {
                          // Show selected images if available
                          if (images.value.isNotEmpty) {
                            return SizedBox(
                              height: 180,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: images.value.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.file(
                                      images.value[index],
                                      width: 150,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                },
                              ),
                            );
                          } else {
                            // Show default upload message
                            return
                            //   widget.asphalteData != null &&
                            //     widget.asphalteData!.photoVideo != null
                            //     ? Container(
                            //   decoration: BoxDecoration(
                            //     borderRadius:
                            //     BorderRadius.circular(10),
                            //     color: Colors.white,
                            //   ),
                            //   margin: const EdgeInsets.symmetric(
                            //       vertical: 10, horizontal: 10),
                            //   width: double.maxFinite,
                            //   height: 180,
                            //   alignment: Alignment.center,
                            //   child: Image.network(
                            //     widget.asphalteData!.photoVideo.toString(),
                            //     errorBuilder: (_, __, ___) =>
                            //         Image.network(
                            //           categoryFile.value.path,
                            //           errorBuilder: (_, __, ___) =>
                            //           const SizedBox(),
                            //         ),
                            //   ),
                            // )
                            //     :
                              Container(
                              padding:
                              const EdgeInsets.only(top: 8),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              width: double.maxFinite,
                              height: 150,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.upload_file,color: AppTheme.greenColor,size: 50,),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Upload Swimming Image And Videos',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight:
                                        FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'Accepted file types: JPEG, Doc, PDF, PNG'
                                        .tr,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            );
                          }
                        } else {
                          // Show selected image
                          return Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                width: double.maxFinite,
                                height: 180,
                                alignment: Alignment.center,
                                child: Image.file(
                                  categoryFile.value,
                                ),
                              ),
                            ],
                          );
                        }
                      }),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Center(
                    child: Container(
                      width: Get.width,
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      decoration: BoxDecoration(color: const Color(0xffFA0101), borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Delete Education',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const CircleAvatar(
                        minRadius: 20,
                        maxRadius: 20,
                        backgroundColor: Color(0xffE2E2E2),
                        child: Text('+',style: TextStyle(fontSize: 20,color: Colors.black),),
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        'Add Education',
                        style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void showActionSheet(BuildContext context) async {
    List<File>? selectedImages = await Helper.addMultiImagePicker();
    if (selectedImages != null && selectedImages.isNotEmpty) {
      images.value = selectedImages.map((image) => File(image.path)).toList();
      setState(() {});
    }
  }
}
