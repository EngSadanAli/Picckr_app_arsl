import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Messages/userMessageScreen.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
          child: Column(
            children: [
              Divider(),
              InkWell(onTap: (){Get.to(UserMessagesScreen());},
                child: Container(height: 70.h,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(backgroundColor: Color(0xFFF0E796),child: Image.asset(AppImages.profile1),radius: 30,),
                            CircleAvatar(backgroundColor: Color(0xFFF0E796),child: Image.asset(AppImages.car),radius: 10,),

                          ],
                        ),
                        CustomSizedBoxWidth(width: 10.w),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF847C3D),
                                    fontWeight: FontWeight.w600,
                                    size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Cooper Septimus'),
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'AM666EE • Toyota Prius Hybris'),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow,),
                                CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '4.9'),
                              ],
                            ),
                          ],)
                      ],)),
              ),
              Divider(),
              InkWell(onTap: (){Get.to(UserMessagesScreen());},
                child: Container(height: 70.w,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(backgroundColor: Color(0xFFF0E796),child: Image.asset(AppImages.profile1),radius: 30,),
                            CircleAvatar(backgroundColor: Color(0xFFF0E796),child: Image.asset(AppImages.car),radius: 10,),

                          ],
                        ),
                        CustomSizedBoxWidth(width: 10),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF847C3D),
                                    fontWeight: FontWeight.w600,
                                    size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Cooper Septimus'),
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'AM666EE • Toyota Prius Hybris'),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow,),
                                CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '4.9'),
                              ],
                            ),
                          ],)
                      ],)),
              ),
              Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
