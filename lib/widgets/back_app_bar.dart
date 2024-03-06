import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'apptheme.dart';

AppBar backAppBar(
    {required title,
      required BuildContext context,
      String dispose = "",
      Color? backgroundColor = AppTheme.backgroundcolor,
      Color? iconColor = AppTheme.blackcolor,
      Color? textColor = Colors.black,
      Widget? icon,
      disposeController}) {
  return AppBar(
    elevation: 0,
    backgroundColor: backgroundColor,
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(
          fontWeight: FontWeight.w500, fontSize: 20, color: textColor),
    ),
    leading: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: icon ??
              Icon(Icons.arrow_back_ios_rounded,color: iconColor,size: 20,)),
    ),
  );
}
