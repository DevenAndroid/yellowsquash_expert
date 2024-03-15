import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/screens/teamFormScreen.dart';

import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const TeamFormScreen());
                },
                child: Row(
                  children: [
                    const CircleAvatar(
                      minRadius: 20,
                      maxRadius: 20,
                      backgroundColor: Color(0xffE2E2E2),
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Add Team Member',
                      style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 250, crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 600,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppTheme.backgroundcolor,
                        borderRadius: BorderRadius.circular(6),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const CircleAvatar(
                            maxRadius: 40,
                            minRadius: 40,
                            backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mrs Pooja",
                            style: GoogleFonts.poppins(
                                color: AppTheme.blackcolor, fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Dietition",
                            style: GoogleFonts.poppins(
                                color: AppTheme.blackcolor, fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "+91 7896547865",
                            style: GoogleFonts.poppins(
                                color: AppTheme.blackcolor, fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/editicon.png',
                                height: 35,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/images/deleteicon.png', height: 35),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
