import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';
import '../widgets/helper.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  bool showValidation = false;
  bool showValidationImg = false;
  Rx<List<File>> images = Rx<List<File>>([]);
  Rx<File> categoryFile = File("").obs;
  String? categoryValue;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Book Appointment',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        iconTheme: const IconThemeData(color: AppTheme.blackcolor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                    hint: 'Manish Prajapat',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email Address',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: 'manishprajapat207@gmail.com',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone Number',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: '7665096245',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Select Condition',
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
                            "Select Condition",
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
                    'Select Date and Time',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RegisterTextFieldWidget(
                    hint: '05-03-2024',
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
                    padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
                    color: showValidationImg == false ? const Color(0xFF019444) : Colors.red,
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
                            return Container(
                              padding: const EdgeInsets.only(top: 8),
                              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                              width: double.maxFinite,
                              height: 150,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.upload_file,
                                    color: AppTheme.greenColor,
                                    size: 50,
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Upload Swimming Image And Videos',
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'Accepted file types: JPEG, Doc, PDF, PNG'.tr,
                                    style: const TextStyle(fontSize: 12, color: Colors.black54),
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
                                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
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
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
