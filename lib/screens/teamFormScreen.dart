import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';

class TeamFormScreen extends StatefulWidget {
  const TeamFormScreen({super.key});

  @override
  State<TeamFormScreen> createState() => _TeamFormScreenState();
}

class _TeamFormScreenState extends State<TeamFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Add team member',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        iconTheme: const IconThemeData(color: AppTheme.blackcolor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
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
                  decoration: BoxDecoration(color: const Color(0xff22C55E), borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Save',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

            ],
          ),
        )
      ),
    );
  }
}
