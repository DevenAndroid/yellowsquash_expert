import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../widgets/apptheme.dart';

class DeactivatedAccount extends StatefulWidget {
  const DeactivatedAccount({super.key});

  @override
  State<DeactivatedAccount> createState() => _DeactivatedAccountState();
}

class _DeactivatedAccountState extends State<DeactivatedAccount> {
  int selectedValue = 1;
  int selectedOption = 1;
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size * .1,
              ),
              const Text(
                "Deactivate Or Delete Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
              ),
              const SizedBox(height: 10),
              const Text(
                "If you want to tak a break, you can deactivate your account. If you do not think you will use then you can permanently delete you account.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffA1A1A1)),
              ),
              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio<int>(
                    activeColor: AppTheme.primaryColor,
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12),
                        Text(
                          "Deactivate your account",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "This is permanent",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff767676)),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "The account will no longer will be available and all data will be permanently removed.",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffA1A1A1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio<int>(
                    activeColor: AppTheme.primaryColor,
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12),
                        Text(
                          "Deactivate your account",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "This can be temporary",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff767676)),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Your details will be removed. Reactivate your account at any time.",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffA1A1A1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Text(
                        "Back to settings",
                        style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),
                      )),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xffC40000),
                          backgroundColor: const Color(0xffC40000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      child: const Center(
                          child: Text("Continue",
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.backgroundcolor))),
                    ),
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