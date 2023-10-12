import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/appColor.dart';
import '../../../Widgets/SizeBox/sizedboxwidth.dart';
import '../../../Widgets/customtext.dart';
// ignore: must_be_immutable
class SignInCustomButton extends StatelessWidget {
  void Function() ontap;
  String title;
  Gradient? gradient;
  String? image;
  Color? color;
  double? height;
  double? width;
  Widget? icon;
  TextStyle? AppStyle;
  bool? loading ;

  SignInCustomButton(
      {Key? key,
        required this.title,
        required this.ontap,
        this.gradient,
        this.height = 56,
        this.width = 337,
        this.color,
        this.icon,
        this.AppStyle,
        this.image,
        this.loading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child:  Container(
        width: width ,
        height:  height,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: BorderSide(width: 0.50, color: Color(0xFF847C3D)   ,))),




        //
        // child: Container(
        //   height:,
        //   width: ,
        //   decoration: BoxDecoration(
        //     border: Border.all(color: AppColor.black),
        //     color: color,
        //     gradient: gradient,
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        child:loading==true ?  Center(child: CircularProgressIndicator(color: AppColor.white,)) : Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image != null
                  ? Image.asset(
                image!,
                height: 30,
                width: 30,
              )
                  : const Text(''),

              CustomText(textStyle: AppStyle, title: title),
              CustomSizedBoxWidth(width: 5.w),
              SizedBox(child: icon)
            ],
          ),
        ),
      ),
    );
  }
}
