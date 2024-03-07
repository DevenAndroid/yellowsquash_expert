import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/apptheme.dart';
import '../widgets/common_text_field.dart';

class PatientDashboardScreen extends StatefulWidget {
  const PatientDashboardScreen({super.key});

  @override
  State<PatientDashboardScreen> createState() => _PatientDashboardScreenState();
}

class _PatientDashboardScreenState extends State<PatientDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Patient Dashboard',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
                        hintText:'Search Here',
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
                const SizedBox(width: 10,),
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
                      borderRadius: BorderRadius.circular(4),),
                  child: const Center(child: Text('Filters',style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),
            ListView.builder(
              itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      maxRadius: 30,
                      minRadius: 30,
                      backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Manvinder Kaur',
                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.blackcolor),
                        ),
                        Text(
                          'Diabetes & Metabolic Reset Program',
                          style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
                        ),
                        Text(
                          'Batch 2',
                          style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: AppTheme.grayColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.more_horiz,color: Colors.grey,)
                  ],
                ),
              );
            })
        
          ],
        ),
      ),
    );
  }
}
