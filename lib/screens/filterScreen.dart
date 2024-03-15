import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/widgets/back_app_bar.dart';

import '../widgets/apptheme.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int kk = 0;
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){

            },
            child: Container(
              width: 150,
              height: 50,
              padding: const EdgeInsets.only( top: 12, bottom: 12,left: 15,right: 15),
              margin: const EdgeInsets.only( top: 12, bottom: 12),
              decoration: BoxDecoration(color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Reset',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: (){

            },
            child: Container(
              width: 150,
              height: 50,
              padding: const EdgeInsets.only( top: 12, bottom: 12,left: 15,right: 15),
              margin: const EdgeInsets.only( top: 12, bottom: 12),
              decoration: BoxDecoration(color: const Color(0xffFFE575), borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Apply Filter',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: backAppBar(title: "Filters", context: context),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130,
            padding: const EdgeInsets.only(left: 20),
            height: Get.height,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    kk = 0;
                    setState(() {

                    });
                  },
                  child: Text(
                    'Program',
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    kk = 1;
                    setState(() {

                    });
                  },
                  child: Text(
                    'Participants',
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return  Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: selectedValue,
                    activeColor: AppTheme.primaryColor,
                    onChanged: (value) {
                      selectedValue = value!;
                    },
                  ),
                  Text(
                    'Diabetes & Metabolic Reset',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
                  ),
                ],
              );

            }),
          )
        ],
      ),
    );
  }
}
