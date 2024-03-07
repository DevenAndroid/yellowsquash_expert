import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/screens/resetPasswordEmail.dart';
import 'package:yellowsquash_expert/screens/resetPasswordOtpScreen.dart';
import 'package:yellowsquash_expert/screens/webinarsScreen.dart';
import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size * .20,
              ),
              Text(
                'Hey.',
                style: GoogleFonts.oswald(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w400),
              ),
              Text(
                'Login Now,',
                style: GoogleFonts.oswald(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextFieldWidget(
                hint: 'Email id',
              ),
              const SizedBox(
                height: 10,
              ),
              RegisterTextFieldWidget(
                hint: 'Password',
                obscureText: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const ResetPasswordEmailScreen());
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(color: AppTheme.greenColor, fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CommonButtonBlue(
                title: 'Login',
                onPressed: () {
                   Get.offAll(() => const WebinarsScreen());
                },
              ),
              SizedBox(
                height: size * .10,
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
                  const Text('Or Login with',
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
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'New Here? ',
                    style: const TextStyle(color: Color(0xff595959)),
                    children: <TextSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(const SignUpScreen());
                            },
                          text: ' Sign Up',
                          style: const TextStyle(fontWeight: FontWeight.w500, color: AppTheme.greenColor, fontSize: 14)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
