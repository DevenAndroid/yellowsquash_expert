import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              const SizedBox(height: 10,),
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
                    'Add Team Member',
                    style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TEAM MEMBER 1',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Name',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(height: 5,),
                  const RegisterTextFieldWidget(
                    hint: 'Full name',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Role',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(height: 5,),
                  const RegisterTextFieldWidget(
                    hint: 'Email address',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone number',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                  ),
                  const SizedBox(height: 5,),
                  const RegisterTextFieldWidget(
                    hint: 'Phone number',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: Get.width,
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      decoration: BoxDecoration(color: const Color(0xffFA0101), borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Delete',
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
                        'Add Team Member',
                        style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
