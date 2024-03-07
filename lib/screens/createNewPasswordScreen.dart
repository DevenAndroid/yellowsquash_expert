import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/apptheme.dart';
import '../../widgets/common_text_field.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
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
                height: size * .25,
              ),
              Text(
                'Create New Password',
                style: GoogleFonts.roboto(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
               RegisterTextFieldWidget(
                hint: 'Password',
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Must be at least 7 characters'),
                  MaxLengthValidator(20, errorText: "Must be at least 7 characters"),
                  MinLengthValidator(7, errorText: "Must be at least 7 characters")
                ]).call,
              ),
              const SizedBox(
                height: 10,
              ),
              RegisterTextFieldWidget(
                hint: 'Confirm Password',
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Both passwords must match'),
                  MaxLengthValidator(20, errorText: "Both passwords must match"),
                  MinLengthValidator(7, errorText: "Both passwords must match")
                ]).call,
              ),

              const SizedBox(
                height: 20,
              ),
              CommonButtonBlue(
                title: 'Reset Password',
                onPressed: (){
                },
              ),



            ],
          ),
        ),
      ),
    );
  }
}
