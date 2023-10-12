import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utils/appColor.dart';
import '../../Utils/appStyle.dart';

// ignore: must_be_immutable
class AppTextFormField extends StatelessWidget {
  TextEditingController controller;
  Widget? prefixIcon;
  Widget? suffixIcon;
  String hintText;
  int? maxline;
  bool? hintleading;
  double? toop;
  double? botm;
  double? right;
  double? left;
  int? maxLength;
  bool? obscure;
  bool? autofocus;
  Color?fillColor;
  TextInputType? keyboard;
  String? Function(String?)? validator;
  void Function(String)? onChanged;

  AppTextFormField(
      {Key? key,
      required this.controller,
      this.maxLength,
        this.autofocus,
      this.maxline,
        this.keyboard,
        this.validator,
      this.suffixIcon,
      this.prefixIcon,
      this.hintleading,
       this.toop,
        this.fillColor,
       this.botm,
      this.right,
      this.left,
        this.onChanged,
        this.obscure,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus??false,
      controller: controller,
      obscureText: obscure??false,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboard,
      style:  TextStyle(color: Theme.of(context).primaryColor),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color:  Color(0xFFF2F4F8),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color:  Color(0xFFF2F4F8),
          ),
        ),
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(color: Color(0xFF878D96)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0xFF847C3D), // You can change the color as you want
          ),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red, // You can change the color as you want
          ),
        ),
        fillColor: fillColor,
        filled: true,
        focusedErrorBorder: OutlineInputBorder(  // This property is added to maintain the red border when the field is focused and contains an error
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red, // Define a color for the focused error state
          ),
        ),
      ),
    )
    ;
  }
}
