import 'dart:async';

import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/KYC/ApprovelReject.dart';
import 'package:picckr_app/Views/KYC/ApprovelSuccess.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';

class ApprovelWaitingScreen extends StatefulWidget {
  const ApprovelWaitingScreen({super.key});

  @override
  State<ApprovelWaitingScreen> createState() => _ApprovelWaitingScreenState();
}

class _ApprovelWaitingScreenState extends State<ApprovelWaitingScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5),(){
Get.offAll(ApprovelRejectScreen());
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            textStyle: AppStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                    size: 14.sp)
                .textPoppinsMedium,
            title: 'KYC'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_sharp,color: Theme.of(context).primaryColor,)),
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingAnimationWidget.stretchedDots(
              color: Color(0xFF847C3D),
              size:30,
            ),

            CustomSizedBoxHeight(height: 10.h),
            CustomText(
                textStyle: AppStyle(
                    color: Color(0xFF847C3D),
                    fontWeight: FontWeight.w600,
                    size: 14.sp)
                    .textPoppinsMedium,
                title: 'Waiting for Approval'),
            CustomSizedBoxHeight(height: 10.h),
            CustomText(
                textStyle: AppStyle(
                    color: Color(0xFF878D96),
                    fontWeight: FontWeight.w500,
                    size: 12.sp)
                    .textPoppinsMedium,
                title: 'Thank you for submitting the required documents! Your documents have been sent and are currently under review by our team.'),








          ],
        ),
      ),
    );
  }
}
