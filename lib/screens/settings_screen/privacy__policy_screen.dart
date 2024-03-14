import 'package:flutter/material.dart';
import '../../widgets/apptheme.dart';
import '../../widgets/back_app_bar.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAppBar(title: "Privacy Policy", context: context,backgroundColor: AppTheme.yellowColor),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Yellowsquash Privacy Policy",
                style: TextStyle(color: AppTheme.blackcolor, fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Text(
                "Your privacy is critical to us. Likewise, we have built up this Policy with the end goal you should see how we gather, utilize, impart, and reveal and make utilization of individual data. The following blueprints our privacy policy.Before or at the time of collecting personal information, we will identify the purposes for which information is being collected. We will gather and utilization of individual data singularly with the target of satisfying those reasons indicated by us and for other good purposes, unless we get the assent of the individual concerned or as required by law. We will just hold individual data the length of essential for the satisfaction of those reasons. We will gather individual data by legal and reasonable means and, where fitting, with the information or assent of the individual concerned. Personal information ought to be important to the reasons for which it is to be utilized, and, to the degree essential for those reasons, ought to be exact, finished, and updated. We will protect individual data by security shields against misfortune or burglary, and also unapproved access, divulgence, duplicating use, or alteration. We will promptly provide customers with access to our policies and procedures for the administration of individual data. We are focused on leading our business as per these standards with a specific end goal to guarantee that the privacy of individual data is secure and maintained.", style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA1A1A1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
