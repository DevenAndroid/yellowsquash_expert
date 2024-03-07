import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/common_text_field.dart';
import '../../resource/app_Assets.dart';
import '../../widgets/apptheme.dart';
import '../../widgets/back_app_bar.dart';

class BlogDetailsScreen extends StatefulWidget {
  const BlogDetailsScreen({super.key});
  static String blogsDetailsScreen = "/blogsDetailsScreen";
  @override
  State<BlogDetailsScreen> createState() => _BlogDetailsScreenState();
}

class _BlogDetailsScreenState extends State<BlogDetailsScreen> {
  final commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: backAppBar(title: "Blog Details", context: context),
      body: Theme(
        data: ThemeData(useMaterial3: true),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blogDetails(size),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget blogDetails(size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Row(
          children: [
            Text(
              "Oct 30, 2020 ",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                ImageIcon(
                  AssetImage(AppAssets.nutrition),
                  size: 15,
                  color: AppTheme.subTitleColor,
                ),
                Text(
                  "  Oct 30, 2020",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Keto Diet For Indian Vegetarians or Vegans",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              height: 35,
              width: 35,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                    errorWidget: (_, __, ___) => const Icon(Icons.person),
                    placeholder: (_, __) => const SizedBox(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Swami Rajvibhu",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.primaryColor),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          width: Get.width,
          child: ClipRRect(
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl:
                  "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
              errorWidget: (_, __, ___) => const Icon(Icons.person),
              placeholder: (_, __) => const SizedBox(),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          width: Get.width,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xffF2F2F2)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Maybe you’ve heard the term “keto diet” a lot from health freaks or some of your friends or in the media. Keto diet is basically a diet high in fat and low in protein and carbohydrate. This takes an interesting turn in the Indian scenario.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.headlineColor,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Around 20-30% of Indians are vegetarians. A keto diet involves consuming a lot of fats and healthy proteins which are mostly obtained from non-vegetarian food sources. Low-carb, high-fat meat, fish, and poultry are staples for keto-dieters, but these are a complete no-no for vegans. Although high-protein legumes and meat substitutes seem to be a good enough alternative, its carb content makes them verboten for keto adherents. So, is it even possible to have a ketogenic diet for vegans?",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor, fontStyle: FontStyle.normal),
        ),
        const SizedBox(height: 10),
        const Text(
          "What is Keto Diet?",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
        ),
        const SizedBox(height: 10),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis donec ut arcu nunc. Mattis arcu et elementum proin adipiscing nibh dolor egestas elit. Sed sagittis iaculis vestibulum egestas gravida egestas. Sagittis pulvinar egestas consequat pellentesque laoreet cursus. Praesent libero condimentum sociis lorem pretium ultricies. Nibh ullamcorper augue amet porttitor viverra risus faucibus sed. Amet, amet pellentesque purus ut sed. Lectus orci elementum vivamus cursus justo, scelerisque enim. Tellus at ipsum etiam sollicitudin cursus felis mattis nam risus. Dui quam amet mi id habitasse quam nulla rhoncus vitae. Velit ipsum lorem nulla enim tortor. Elit aliquam in non facilisi potenti. Fermentum ipsum a pretium vestibulum. Pretium porttitor id pellentesque porta vestibulum.",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor, fontStyle: FontStyle.normal),
        ),
        const SizedBox(height: 10),
        const Text(
          "Low fats",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
        ),
        const SizedBox(height: 10),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis donec ut arcu nunc. Mattis arcu et elementum proin adipiscing nibh dolor egestas elit. Sed sagittis iaculis vestibulum egestas gravida egestas. Sagittis pulvinar egestas consequat pellentesque laoreet cursus. Praesent libero condimentum sociis lorem pretium ultricies. Nibh ullamcorper augue amet porttitor viverra risus faucibus sed. Amet, amet pellentesque purus ut sed. Lectus orci elementum vivamus cursus justo, scelerisque enim. Tellus at ipsum etiam sollicitudin cursus felis mattis nam risus. Dui quam amet mi id habitasse quam nulla rhoncus vitae. Velit ipsum lorem nulla enim tortor. Elit aliquam in non facilisi potenti. Fermentum ipsum a pretium vestibulum. Pretium porttitor id pellentesque porta vestibulum.",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor, fontStyle: FontStyle.normal),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          width: Get.width,
          child: ClipRRect(
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl:
                  "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
              errorWidget: (_, __, ___) => const Icon(Icons.person),
              placeholder: (_, __) => const SizedBox(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Low proteins",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppTheme.headlineColor),
        ),
        const SizedBox(height: 10),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis donec ut arcu nunc. Mattis arcu et elementum proin adipiscing nibh dolor egestas elit. Sed sagittis iaculis vestibulum egestas gravida egestas. Sagittis pulvinar egestas consequat pellentesque laoreet cursus. Praesent libero condimentum sociis lorem pretium ultricies. Nibh ullamcorper augue amet porttitor viverra risus faucibus sed. Amet, amet pellentesque purus ut sed. Lectus orci elementum vivamus cursus justo, scelerisque enim. Tellus at ipsum etiam sollicitudin cursus felis mattis nam risus. Dui quam amet mi id habitasse quam nulla rhoncus vitae. Velit ipsum lorem nulla enim tortor. Elit aliquam in non facilisi potenti. Fermentum ipsum a pretium vestibulum. Pretium porttitor id pellentesque porta vestibulum.",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor, fontStyle: FontStyle.normal),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.4,
                height: 150,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                    fit: BoxFit.cover,
                    errorWidget: (_, __, ___) => const Icon(
                      Icons.category,
                      color: Color(0xff22C55E),
                    ),
                    placeholder: (_, __) => const SizedBox(),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.02),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mental Health | Diets | Kid Therapeutic | Nutrition",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.headlineColor),
                      maxLines: 2,
                    ),
                    SizedBox(height: size.height * 0.006),
                    const Text(
                      "Swami Rajvibhu",
                      maxLines: 2,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                    ),
                    SizedBox(height: size.height * 0.006),
                    const Text(
                      "Eating Out While Pregnant:Is It A Good Idea?",
                      maxLines: 2,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                    ),
                    SizedBox(height: size.height * 0.006),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit suscipit tellus orci ornare amet",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff7C7B7B)),
                      maxLines: 2,
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: Get.width,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.start,
                  children: List.generate(
                      10,
                      (index) => Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: AppTheme.greenColor)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: index % 2 == 1
                                      ? const Text(
                                          "ADHD",
                                          style: TextStyle(
                                              fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.greenColor),
                                        )
                                      : const Text(
                                          "Accupressure",
                                          style: TextStyle(
                                              fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.greenColor),
                                        ),
                                )),
                          )),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/facebook.png',
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/google.png',
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/google.png',
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/google.png',
              height: 40,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          height: 200,
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
                    const SizedBox(height: 10,),
                    Text(
                      "Mental Health | Diets | Kid Therapeutic | Nutrition",
                      style: GoogleFonts.poppins(
                          color: AppTheme.grayColor, fontWeight: FontWeight.w400, fontSize: 9),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Swami Rajvibhu",
                      style: GoogleFonts.poppins(
                          color: AppTheme.blackcolor, fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Kumbhak Therapy Pioneer & Kumbhak Yogi",
                      style: GoogleFonts.poppins(
                          color: AppTheme.blackcolor, fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                    const Spacer(),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit suscipit tellus orci ornare amet",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff444444), fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                    const SizedBox(height: 10,),


                  ],
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
        const SizedBox(height: 20),
        comments(),
        const SizedBox(height: 20),
        const Text(
          "Leave a Comment",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            Text(
              "Logged in as ",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
            ),
            Text(
              "Swami Rajvibhu.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.primaryColor),
            ),
          ],
        ),
        const SizedBox(height: 15),
        RegisterTextFieldWidget(
          hint: "Add a comment...",
          controller: commentController,
          maxLines: 3,
          minLines: 3,
        ),
        const SizedBox(height: 10),
        Container(
          height: size.height * .05,
          width: size.width * .30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xffFFE575),
                backgroundColor: const Color(0xffF9D121),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                )),
            child: const Center(
                child: Text("Post",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor))),
          ),
        ),
      ],
    );
  }

  Widget blogList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(6), border: Border.all(color: AppTheme.primaryColor)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(5, 5),
                          color: Colors.grey.shade300,
                          spreadRadius: .5,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                        fit: BoxFit.cover,
                        errorWidget: (_, __, ___) => const Icon(
                          Icons.category,
                          color: Color(0xff22C55E),
                        ),
                        placeholder: (_, __) => const SizedBox(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "By Dr. Praveen Dhole |  Jan 30, 2024",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Fungal Infections, and Hyperactivity and heir....",
                    maxLines: 3,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "This article discusses the connection between yeast overgrowth and autism...",
                    maxLines: 3,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xffFFE575),
                          backgroundColor: const Color(0xffF9D121),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      child: const Center(
                          child: Row(
                        children: [
                          Text("Read more",
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor)),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: AppTheme.blackcolor,
                            size: 20,
                          )
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget recentPost(size) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * .005),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // Centered the column items
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  height: size.height * 0.12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                      fit: BoxFit.cover,
                      errorWidget: (_, __, ___) => const Icon(
                        Icons.category,
                        color: Color(0xff22C55E),
                      ),
                      placeholder: (_, __) => const SizedBox(),
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.02),
                SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "March 2020",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppTheme.headlineColor),
                      ),
                      SizedBox(height: size.height * 0.006),
                      const Text(
                        "Eating Out While Pregnant:Is It A Good Idea?",
                        maxLines: 2,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
                      ),
                      SizedBox(height: size.height * 0.006),
                      const Text(
                        "Read more",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xff22C55E)),
                      ),
                      SizedBox(height: size.height * 0.01),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget upComingWebinar(size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Centered the column items
      children: [
        Container(
          width: size.width,
          height: size.height * 0.15, // Added width to the container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl:
                  "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
              fit: BoxFit.cover,
              errorWidget: (_, __, ___) => const Icon(
                Icons.category,
                color: Color(0xff22C55E),
              ),
              placeholder: (_, __) => const SizedBox(),
            ),
          ),
        ),
        SizedBox(height: size.height * 0.01),
        SizedBox(
          width: size.width,
          height: size.height * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.date_range,
                    color: Color(0xff22C55E),
                    size: 16,
                  ),
                  Expanded(
                      child: Text(
                    " Feb 28, 2024 | 07:30 - 09:30(IST)",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
                  )),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Functional Medicine",
                maxLines: 2,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.shade500),
              ),
              SizedBox(height: size.height * 0.01),
              const Text(
                "By : Dr. Gaurang Ram",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff22C55E)),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget comments() {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              "4 Comments",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppTheme.headlineColor),
            ),
            Icon(Icons.keyboard_arrow_up_rounded)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl:
                                  "https://media.istockphoto.com/id/515067687/photo/fagaras-mountains-romania-transylvania-region.jpg?s=2048x2048&w=is&k=20&c=8wJ56nL1trH7XM4_C86IWDsoQrzuj9ZyjP6Oe7SA6GA=",
                              errorWidget: (_, __, ___) => const Icon(Icons.person),
                              placeholder: (_, __) => const SizedBox(),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Swami Rajvibhu",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.primaryColor),
                                ),
                                Text(
                                  "   24 minutes ago",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices rhoncus arcu.",
                              style:
                                  TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.thumb_up_off_alt,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                                Text(
                                  " 2   Reply",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.subTitleColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
