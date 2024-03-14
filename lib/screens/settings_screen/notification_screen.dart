import 'dart:developer';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../resource/app_Assets.dart';
import '../../widgets/apptheme.dart';
import '../../widgets/back_app_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: backAppBar(title: "Notifications", context: context,backgroundColor: AppTheme.yellowColor),
      body: Theme(
        data: ThemeData(
          useMaterial3: true
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
              physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Slidable(
                  endActionPane: ActionPane(
                      motion: const BehindMotion(),
                      extentRatio: 2/5,
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            log("hgnhg");
                            setState(() {});
                          },
                          backgroundColor: const Color(0xFFFF5000),
                          label: 'Delete',
                          icon: Icons.delete_outline_rounded,
                          padding: EdgeInsets.zero,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                        ),
                      ]),
                  child: Container(
                    // margin: const EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: CachedNetworkImage(
                                  imageUrl: "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                  fit: BoxFit.cover,
                                  errorWidget: (_, __, ___) => Image.asset(
                                      'assets/images2/watch2_img.png',
                                      fit: BoxFit.cover),
                                  placeholder: (_, __) =>
                                      Center(child: Image.asset(
                                        AppAssets.groups,
                                        color: Colors.grey.shade200,

                                      )),
                                ),
                              )),
                          SizedBox(
                            width: width * .02,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //SizedBox(height: height * .01,),
                                Text("Dr Priti Nanda Sibal has started a live session for Gut Cleanse & Rejuvenation Program.",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppTheme.headlineColor)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
