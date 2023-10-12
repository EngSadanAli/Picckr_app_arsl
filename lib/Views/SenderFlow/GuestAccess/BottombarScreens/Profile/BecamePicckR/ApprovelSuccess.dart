import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Home/home_with%20no%20order.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/picckRaccount.dart';

import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ApprovelVehicleVerificationSuccessScreen extends StatelessWidget {
  const ApprovelVehicleVerificationSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(color: Theme.of(context).scaffoldBackgroundColor,
        height: 75.h,child: Column(children: [
        Divider(),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomButton(
            title: 'Next',
            ontap: () {
              Get.off(PicckRAccount());
            },
            color: Color(0xFF847C3D),
            AppStyle: AppStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                size: 12.sp)
                .textPoppinsMedium,
          ),
        ),
      ],),),
      appBar: AppBar(
        title: CustomText(
            textStyle: AppStyle(
                color: Color(0xFF444444),
                fontWeight: FontWeight.w500,
                size: 14.sp)
                .textPoppinsMedium,
            title: 'Vehicle Verification'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CustomSizedBoxHeight(height: 10.h),
          CustomText(
              textStyle: AppStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  size: 14.sp)
                  .textPoppinsMedium,
              title: 'Documents Approved!'),
          CustomSizedBoxHeight(height: 10.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w),
            child: CustomText(
                textStyle: AppStyle(
                    color: Color(0xFF878D96),
                    fontWeight: FontWeight.w500,
                    size: 12.sp)
                    .textPoppinsMedium,
                title: 'Congratulations, your documents have successfully obtained approval. Thank you for your patience.'),
          ),








        ],
      ),
    );
  }
}
