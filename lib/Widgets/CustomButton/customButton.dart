import 'package:flutter/material.dart';
import '../../Utils/appColor.dart';
import '../SizeBox/sizedboxwidth.dart';
import '../customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  void Function() ontap;
  String title;
  Gradient? gradient;
  String? image;
  Color? color;
  Color? borderColor;
  double? height;
  double? width;
  Widget? icon;
  TextStyle? AppStyle;
  bool? loading ;


  CustomButton(
      {Key? key,
      required this.title,
      required this.ontap,
      this.gradient,
      this.height = 56,
      this.width = 337,
      this.color,
      this.icon,
        this.borderColor,
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
        // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
    color: color?? Theme.of(context).primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: BorderSide(width: 0.50, color:borderColor?? Color(0xFFDDE1E6),))),




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
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              image != null
                  ? Image.asset(
                      image!,
                      height: 30.h,
                      width: 30.w,
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
