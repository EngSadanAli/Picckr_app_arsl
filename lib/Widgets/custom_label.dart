import 'package:flutter/material.dart';
import '../Utils/appColor.dart';
import 'customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomLabel extends StatelessWidget {
  String label;
  CustomLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
        textStyle: TextStyle(
            color: AppColor.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500),
        title: label);
  }
}
