import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/vehicalverification.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ApprovelRejectScreen extends StatelessWidget {
  const ApprovelRejectScreen({super.key});

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
            title: 'Vehicle Verification'),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Icon(Icons.error,color: Colors.red,),
          CustomSizedBoxHeight(height: 10.h),
          CustomText(
              textStyle: AppStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  size: 14.sp)
                  .textPoppinsMedium,
              title: 'Documents Rejected'),
          CustomSizedBoxHeight(height: 10.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomText(
                textStyle: AppStyle(
                    color: Color(0xFF878D96),
                    fontWeight: FontWeight.w500,
                    size: 12.sp)
                    .textPoppinsMedium,
                title: 'Sorry, your request has been rejected. Please try again to upload the document.'),
          ),





        ],
      ),
      bottomNavigationBar: Container(height: 75.h,child: Column(children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomButton(
            title: 'back',
            ontap: () {
              Get.offAll(()=>VehicalVerification());
            },
            color: Color(0xFF847C3D),
            AppStyle: AppStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                size: 12.sp)
                .textPoppinsMedium,
          ),
        ),
      ],)),
    );

  }
}
