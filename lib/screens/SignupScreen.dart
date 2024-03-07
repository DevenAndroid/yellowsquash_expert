import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/screens/signupWithEmailScreen.dart';
import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';

class SignUpScreen extends StatefulWidget {
const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showValidation = false;
  bool value = false;
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
                'Sign Up',
                style: GoogleFonts.oswald(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 25,
              ),
              const RegisterTextFieldWidget(
                hint: 'Full name',
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextFieldWidget(
                hint: 'Email address',
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextFieldWidget(
                hint: 'Phone number',
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
              Row(
                children: [
                  Transform.scale(
                    scale: 1.1,
                    child: Theme(
                      data: ThemeData(
                          unselectedWidgetColor: showValidation == false ? const Color(0xFF64646F) : Colors.red),
                      child: Checkbox(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: value,
                          side: const BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                          activeColor: const Color(0xFF355EB3),
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue!;
                              setState(() {});
                            });
                          }),
                    ),
                  ),
                  Expanded(
                      child:  RichText(
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.rtl,
                        softWrap: true,
                        text: TextSpan(
                          text: 'I agree to all ',
                          style: TextStyle(color: Color(0xff595959),fontSize: 13,fontWeight: FontWeight.w300),
                          children: <TextSpan>[
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        // Return the dialog box widget
                                        return const AlertDialog(
                                          title: Text('Terms and Conditions',),
                                          content: Text(
                                              'Terms and conditions are part of a contract that ensure parties understand their contractual rights and obligations. Parties draft them into a legal contract, also called a legal agreement, in accordance with local, state, and federal contract laws. They set important boundaries that all contract principals must uphold.'
                                                  'Several contract types utilize terms and conditions. When there is a formal agreement to create with another individual or entity, consider how you would like to structure your deal and negotiate the terms and conditions with the other side before finalizing anything. This strategy will help foster a sense of importance and inclusion on all sides.'),
                                          actions: <Widget>[],
                                        );
                                      },
                                    );
                                  },
                                text: 'Terms And Conditions',
                              style: GoogleFonts.poppins(color: AppTheme.greenColor,fontSize: 13,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                  ),
                ],
              ),
             
              const SizedBox(
                height: 20,
              ),
              CommonButtonBlue(
                title: 'Submit',
                onPressed: (){
                  Get.to(const SignUpWithEmailScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
