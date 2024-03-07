import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/screens/resetPasswordOtpScreen.dart';

import '../../widgets/common_text_field.dart';

class ResetPasswordEmailScreen extends StatefulWidget {
  const ResetPasswordEmailScreen({super.key});

  @override
  State<ResetPasswordEmailScreen> createState() => _ResetPasswordEmailScreenState();
}

class _ResetPasswordEmailScreenState extends State<ResetPasswordEmailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: CircleAvatar(
            backgroundColor: const Color(0xffF3F3F3),
            minRadius: 30,
            maxRadius: 30,
            child: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size * .15,
              ),
              Text(
                'Reset Password',
                style: GoogleFonts.oswald(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w500),
              ),
              Text(
                'Enter your registered email id or phone number associated with your YellowSquash account',
                style: GoogleFonts.roboto(color: const Color(0xff7C7B7B), fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              const RegisterTextFieldWidget(
                hint: 'Enter Email id',
              ),
              const SizedBox(
                height: 20,
              ),
              CommonButtonBlue(
                title: 'Proceed',
                onPressed: () {
                  Get.to(const ResetPasswordOtpScreen());
                },
              ),
              SizedBox(
                height: size * .18,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
