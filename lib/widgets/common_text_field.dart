import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'addsize.dart';
import 'apptheme.dart';

class RegisterTextFieldWidget extends StatelessWidget {
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final Widget? suffix;
  final Widget? prefix;
  final Color? bgColor;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? hint;
  final Iterable<String>? autofillHints;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final TextInputFormatter? digitValue;
  final bool? readOnly;
  final dynamic value = 0;
  final dynamic minLines;
  final dynamic maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText;
  final VoidCallback? onTap;
  final length;
  final color;

  const RegisterTextFieldWidget({
    Key? key,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.hint,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    this.bgColor,
    this.validator,
    this.suffix,
    this.autofillHints,
    this.prefix,
    this.minLines = 1,
    this.maxLines = 1,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.length,
    this.digitValue,
    this.color,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 5),
            color: Colors.grey.shade300,
            spreadRadius: .5,
            blurRadius: 10,
          ),
        ],
      ),
      child: TextFormField(
        style: const TextStyle(color: Color(0xFF384953)),
        onTap: onTap,
        onChanged: onChanged,
        readOnly: readOnly!,
        controller: controller,
        obscureText: hint == hint ? obscureText! : false,
        autofillHints: autofillHints,
        validator: validator,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        minLines: minLines,
        maxLines: maxLines,
        cursorColor: AppTheme.primaryColor,
        inputFormatters: [
          ...inputFormatters ?? [],
          LengthLimitingTextInputFormatter(length),
          if (digitValue != null) digitValue!
        ],
        decoration: InputDecoration(
            hintText: hint,
            focusColor: const Color(0xFF384953),
            hintStyle: GoogleFonts.poppins(
              color: const Color(0xFF595959),
              textStyle: GoogleFonts.poppins(
                color: const Color(0xFF384953),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
              fontSize: 14,
              // fontFamily: 'poppins',
              fontWeight: FontWeight.w300,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            // .copyWith(top: maxLines! > 4 ? AddSize.size18 : 0),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(6.0),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(6.0)),
            suffixIcon: suffixIcon,
            suffix: suffix,
            prefix: prefix,
            prefixIcon: prefixIcon),
      ),
    );
  }
}


class SearchTextFieldWidget extends StatelessWidget {
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final Widget? suffix;
  final Widget? prefix;
  final Color? bgColor;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? hint;
  final Iterable<String>? autofillHints;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final TextInputFormatter? digitValue;
  final bool? readOnly;
  final dynamic value = 0;
  final dynamic minLines;
  final dynamic maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText;
  final VoidCallback? onTap;
  final length;
  final color;

  const SearchTextFieldWidget({
    Key? key,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.hint,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    this.bgColor,
    this.validator,
    this.suffix,
    this.autofillHints,
    this.prefix,
    this.minLines = 1,
    this.maxLines = 1,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.length,
    this.digitValue,
    this.color,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Color(0xFF384953)),
      onTap: onTap,
      onChanged: onChanged,
      readOnly: readOnly!,
      controller: controller,
      obscureText: hint == hint ? obscureText! : false,
      autofillHints: autofillHints,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      minLines: minLines,
      maxLines: maxLines,
      cursorColor: const Color(0xff2D2D2D),
      inputFormatters: [
        ...inputFormatters ?? [],
        LengthLimitingTextInputFormatter(length),
        if (digitValue != null) digitValue!
      ],
      decoration: InputDecoration(
          hintText: hint,
          focusColor: const Color(0xFF384953),
          hintStyle: GoogleFonts.poppins(
            color: const Color(0xFF595959),
            textStyle: GoogleFonts.poppins(
              color: const Color(0xFF384953),
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
            fontSize: 14,
            // fontFamily: 'poppins',
            fontWeight: FontWeight.w300,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          // .copyWith(top: maxLines! > 4 ? AddSize.size18 : 0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF2D2D2D)),
            borderRadius: BorderRadius.circular(6.0),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF2D2D2D)),
              borderRadius: BorderRadius.all(Radius.circular(6.0))),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFF2D2D2D), width: 1.0),
              borderRadius: BorderRadius.circular(6.0)),
          suffixIcon: suffixIcon,
          suffix: suffix,
          prefix: prefix,
          prefixIcon: prefixIcon),
    );
  }
}

class CommonButtonBlue extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;
  const CommonButtonBlue({Key? key, required this.title, this.onPressed, this.margin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        margin: margin,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [
                  Color(0xffFFE575),
                  Color(0xffF9D121),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
            borderRadius: BorderRadius.circular(9)),
        child: Center(
          child: Text(title,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, color: Colors.black, letterSpacing: .5, fontSize: 14)),
        ),
      ),
    );
  }
}
