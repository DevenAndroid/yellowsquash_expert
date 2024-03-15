import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/widgets/apptheme.dart';

class CustomDropdownTextField extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final Widget? suffix;
  final Widget? prefix;

  CustomDropdownTextField({
    this.suffixIcon,
    this.prefixIcon,
    this.suffix,
    this.prefix,
    required this.items,
    required this.hintText,
    this.onChanged,
  });

  @override
  _CustomDropdownTextFieldState createState() => _CustomDropdownTextFieldState();
}

class _CustomDropdownTextFieldState extends State<CustomDropdownTextField> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: AppTheme.backgroundcolor,
      value: _selectedItem,
      items: widget.items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          _selectedItem = value;
          widget.onChanged?.call(value!);
        });
      },
      decoration: InputDecoration(
          hintText: widget.hintText,
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
          suffixIcon: widget.suffixIcon,
          suffix: widget.suffix,
          prefix: widget.prefix,
          prefixIcon: widget.prefixIcon),
    );
  }
}
