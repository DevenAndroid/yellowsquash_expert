import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_Assets.dart';
import '../../widgets/apptheme.dart';
import '../../widgets/back_app_bar.dart';
import 'about_yellowaquash_screen.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAppBar(title: "Help Center", context: context,backgroundColor: AppTheme.yellowColor),
      body:  Theme(
        data: ThemeData(
            useMaterial3: true
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text("Hi User ! How we can help you?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                const SizedBox(height: 10),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      Get.to(()=>const AboutYellowSquashScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: AppTheme.primaryColor)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Image(image: AssetImage(AppAssets.splash,),width: 100),
                                  Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppTheme.primaryColor
                                    ),
                                    child: const Center(child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                      child: Text("2 articles",style: TextStyle(color: AppTheme.backgroundcolor,fontSize: 12),),
                                    )),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Text("About Yellowsquash",style: TextStyle(color: AppTheme.blackcolor,fontSize: 15,fontWeight: FontWeight.w500),),
                              const Text("What is Yellowsquash and how it works",style: TextStyle(color: Color(0xffA1A1A1),fontSize: 12,fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
