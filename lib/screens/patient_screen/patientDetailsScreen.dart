import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/screens/patient_screen/patientReportScreen.dart';

import '../../widgets/apptheme.dart';
import '../../widgets/common_text_field.dart';

class PatientDetailsScreen extends StatefulWidget {
  const PatientDetailsScreen({super.key});

  @override
  State<PatientDetailsScreen> createState() => _PatientDetailsScreenState();
}

class _PatientDetailsScreenState extends State<PatientDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Patient Dashboard',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        iconTheme: const IconThemeData(color: AppTheme.blackcolor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(
                                0.2,
                                0.2,
                              ),
                              blurRadius: 5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(4)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search Here',
                          prefixIcon: IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: AppTheme.grayColor,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xff595959),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(
                            0.2,
                            0.2,
                          ),
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                        child: Text(
                      'Filters',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 30,
                    minRadius: 30,
                    backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manvinder Kaur',
                        style:
                            GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                      ),
                      Text(
                        'Diabetes & Metabolic Reset Program',
                        style:
                            GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
                      ),
                      Text(
                        'Batch 2',
                        style:
                            GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                  PopupMenuButton<int>(
                      surfaceTintColor: Colors.white,
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                      color: Colors.white,
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            value: 1,
                            onTap: () {},
                            child: const Text("Levels"),
                          ),
                          PopupMenuItem(
                            value: 2,
                            onTap: () {
                              Get.to(const PatientReportScreen());
                            },
                            child: const Text("Reports"),
                          ),
                          PopupMenuItem(
                            value: 3,
                            onTap: () {},
                            child: const Text("Tasks"),
                          ),
                          PopupMenuItem(
                            value: 3,
                            onTap: () {},
                            child: const Text("Symptoms"),
                          ),
                          PopupMenuItem(
                            value: 3,
                            onTap: () {},
                            child: const Text("Intake Form"),
                          ),
                        ];
                      })
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'My Programs',
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
              ),
              ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: 160,
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(
                                        0.2,
                                        0.2,
                                      ),
                                      blurRadius: 5,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 200,
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                              fit: BoxFit.cover,
                                              errorWidget: (_, __, ___) => const SizedBox(),
                                              placeholder: (_, __) => Image.asset(
                                                'assets/images/doctor.png',
                                                color: Colors.grey.shade200,
                                                height: 100,
                                                width: 100,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            top: 10,
                                            left: 10,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade400,
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Color(0xffCC3D36),
                                                  size: 15,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Kumbhak Therapy for Thyroid Reversal",
                                          style: GoogleFonts.poppins(
                                              color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 16),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              Text(
                'My Workshops',
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: 160,
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(
                                        0.2,
                                        0.2,
                                      ),
                                      blurRadius: 5,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 200,
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                                              fit: BoxFit.cover,
                                              errorWidget: (_, __, ___) => const SizedBox(),
                                              placeholder: (_, __) => Image.asset(
                                                'assets/images/doctor.png',
                                                color: Colors.grey.shade200,
                                                height: 100,
                                                width: 100,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            top: 10,
                                            left: 10,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade400,
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Color(0xffCC3D36),
                                                  size: 15,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Kumbhak Therapy for Thyroid Reversal",
                                          style: GoogleFonts.poppins(
                                              color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 16),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
