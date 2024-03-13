import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/apptheme.dart';

class PatientReportDetailsScreen extends StatefulWidget {
  const PatientReportDetailsScreen({super.key});

  @override
  State<PatientReportDetailsScreen> createState() => _PatientReportDetailsScreenState();
}

class _PatientReportDetailsScreenState extends State<PatientReportDetailsScreen> {
  CarouselController carouselController = CarouselController();

  static List<ImageModel> featuredImages = [
    ImageModel(
        name: "Dr. Indira Priyadarshini",
        imageUrl: "assets/images/doctor.jpeg",
        count :100
    ),
    ImageModel(
        name: "Dr. Indira Priyadarshini",
        imageUrl: "assets/images/doctor.png",
        count :102
    ),
    ImageModel(
        name: "Dr. Indira Priyadarshini",
        imageUrl: "assets/images/doctor.jpeg",
        count :104
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Reports',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        iconTheme: const IconThemeData(color: AppTheme.blackcolor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                clipBehavior: Clip.none, alignment: Alignment.center,
                children: [
                  Container(
                    width: Get.width,
                    height: 320,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
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
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            CarouselSlider(
                              carouselController: carouselController, // Give the controller
                              options: CarouselOptions(
                                  autoPlay: true,
                                  height: 320,
                                  viewportFraction: 4
                              ),
                              items: featuredImages.map((featuredImage) {
                                return Image.asset(featuredImage.imageUrl,fit: BoxFit.cover,height: 200,width: 220,);
                              }).toList(),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 1,
                    top:120,
                    child: IconButton(
                      onPressed: () {
                        carouselController.previousPage();
                      },
                      icon: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          maxRadius: 12,
                          minRadius: 12,
                          child: Center(child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 15,))),
                    ),),
                  Positioned(
                    right: 10,
                    top:120,
                    child: IconButton(
                      onPressed: () {
                        carouselController.previousPage();
                      },
                      icon: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          maxRadius: 12,
                          minRadius: 12,
                          child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 15,))),
                    ),)
                ],
              ),
              const SizedBox(height: 20,),
              Text(
                'Blood Sugar Report',
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: AppTheme.blackcolor),
              ),
              const SizedBox(height: 10,),
              Text(
                'Added on 2 Mar, 2022',
                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
              ),
              const SizedBox(height: 10,),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Augue etiam tincidunt vitae integer nibh. Eros suspendisse mollis semper non penatibus suspendisse feugiat a. Metus vel tortor massa tortor turpis. Pharetra, at dignissim et magna scelerisque ultricies praesent.',
                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
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

  ImageModel({
    required this.name,
    required this.imageUrl,
    required this.count
  });
}