import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';
import 'otpScreen.dart';

class SignUpWithEmailScreen extends StatefulWidget {
  const SignUpWithEmailScreen({super.key});

  @override
  State<SignUpWithEmailScreen> createState() => _SignUpWithEmailScreenState();
}

class _SignUpWithEmailScreenState extends State<SignUpWithEmailScreen> {
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
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size * .15,
              ),
              Text(
                'Welcome,',
                style: GoogleFonts.oswald(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w400),
              ),
              Text(
                'Let’s Get Started!',
                style: GoogleFonts.oswald(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w500),
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
                  Get.to(const OtpScreen());
                },
              ),
              SizedBox(
                height: size * .18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 120,
                      color: const Color(0xFFD2D8DC),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('OR REGISTER WITH',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff595959),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 120,
                      color: const Color(0xFFD2D8DC),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    height: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/images/google.png',
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
