import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/screens/webinar_screen/webinarDetailsScreen.dart';
import 'package:yellowsquash_expert/widgets/back_app_bar.dart';

import '../../widgets/apptheme.dart';

class WebinarsScreen extends StatefulWidget {
  const WebinarsScreen({super.key});

  @override
  State<WebinarsScreen> createState() => _WebinarsScreenState();
}

class _WebinarsScreenState extends State<WebinarsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAppBar(title: "Webinars", context: context,backgroundColor: AppTheme.yellowColor),
      body: Theme(
        data: ThemeData(
            useMaterial3: true
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15.0,top:15),
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Created on 20.04.2022',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xff444444)),
                              ),

                              Image.asset('assets/images/editicon.png',height: 25,)
                            ],
                          ),
                          const SizedBox(height: 5,),
                          GestureDetector(
                            onTap: (){
                              Get.to(const WebinarDetailsScreen());
                            },
                            child: SizedBox(
                                height: 160,
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
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            const SizedBox(height: 10,),
                                            Text(
                                              "Functional Medicine Program for Autism & Developmental Disorders",
                                              maxLines: 3,
                                              style: GoogleFonts.poppins(
                                                  color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 16),
                                            ),
                                            const SizedBox(height: 5,),
                                            Text(
                                              "DRAFT",
                                              style: GoogleFonts.poppins(
                                                  color: const Color(0xff444444), fontWeight: FontWeight.w500, fontSize: 12),
                                            ),
                                            const SizedBox(height: 10,),


                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                )),
                          ),
                          const SizedBox(height: 10,),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
