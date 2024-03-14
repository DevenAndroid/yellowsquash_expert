import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/common_text_field.dart';
import '../login_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: CircleAvatar(
            backgroundColor: const Color(0xffF3F3F3),
            minRadius: 30,
            maxRadius: 30,
            child: GestureDetector(
              onTap: () {
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
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size * .1,
                ),
                Text(
                  'Change Password',
                  style: GoogleFonts.roboto(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                RegisterTextFieldWidget(
                    hint: 'Current Password',
                    controller: oldPasswordController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter your current password'),
                      MinLengthValidator(8,
                          errorText: 'Password must be at least 8 characters, with 1 special character & 1 numerical'),
                      PatternValidator(r"(?=.*\W)(?=.*?[#?!@$%^&*-])(?=.*[0-9])",
                          errorText: "Password must be at least with 1 special character & 1 numerical"),
                    ])),
                const SizedBox(
                  height: 10,
                ),
                RegisterTextFieldWidget(
                    controller: passwordController,
                    hint: 'New Password',
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter your password'),
                      MinLengthValidator(8,
                          errorText: 'Password must be at least 8 characters, with 1 special character & 1 numerical'),
                      PatternValidator(r"(?=.*\W)(?=.*?[#?!@$%^&*-])(?=.*[0-9])",
                          errorText: "Password must be at least with 1 special character & 1 numerical"),
                    ])),
                const SizedBox(
                  height: 10,
                ),
                RegisterTextFieldWidget(
                  controller: confirmController,
                  hint: 'Confirm Password',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your confirm password';
                    }
                    if (value.toString() == passwordController.text) {
                      return null;
                    }
                    return "Confirm password not matching with password";
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonButtonBlue(
                  title: 'Change Password',
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
