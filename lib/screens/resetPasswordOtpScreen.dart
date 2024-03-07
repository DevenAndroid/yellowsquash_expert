import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/apptheme.dart';
import '../../widgets/common_text_field.dart';
import 'createNewPasswordScreen.dart';

class ResetPasswordOtpScreen extends StatefulWidget {
  const ResetPasswordOtpScreen({super.key});

  @override
  State<ResetPasswordOtpScreen> createState() => _ResetPasswordOtpScreenState();
}

class _ResetPasswordOtpScreenState extends State<ResetPasswordOtpScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;

    final defaultPinTheme = PinTheme(
      width: 40,
      height: 40,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(
              1,
              1,
            ), //Offset
            blurRadius: 1,

            blurStyle: BlurStyle.normal,
            spreadRadius: 1,
          )
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: CircleAvatar(
            backgroundColor: Color(0xffF3F3F3),
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
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              SizedBox(
                height: size * .20,
              ),
              Text(
                'Please enter the 6-digit OTP sent to',
                style: GoogleFonts.poppins(color: Color(0xff2D2D2D), fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                'qnicole@markhansongu.com',
                style: GoogleFonts.poppins(color: Color(0xff2D2D2D), fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30,),
              Pinput(
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Enter 6 Digit Pin'),
                  MaxLengthValidator(6, errorText: "enter 6 digit otp"),
                  MinLengthValidator(6, errorText: "Enter 6 Digit Pin")
                ]).call,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // controller: registorController.otpcontroller,
                keyboardType: TextInputType.number,
                length: 6,
                defaultPinTheme: defaultPinTheme,
              ),
              const SizedBox(
                height: 40,
              ),
              CommonButtonBlue(
                title: 'Verify',
                onPressed: () {
                  Get.to(const CreateNewPasswordScreen());
                },
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Resend OTP?',
                  style: GoogleFonts.poppins(color: AppTheme.greenColor, fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
