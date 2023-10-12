import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/RealTimeTracking/picckrPickUp.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/customtext.dart';

class ListofPicckr extends StatelessWidget {
  const ListofPicckr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0.r),
          topRight: Radius.circular(30.0.r),
        ),
        child: Container(
          height: 658.h, // Set the height as needed

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSizedBoxHeight(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose PicckR',
                        style: TextStyle(
                          color: Color(0xFF847C3D),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.50,
                        ),
                      ),
                      const Text(
                        'Cancel the ride',
                        style: TextStyle(
                          color: Color(0xFF847C3D),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                CustomSizedBoxHeight(height: 10.h),
                Divider(),
                Container(
                  height: 600.h,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Color(0xFF878D96)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    AppImages.image2,
                                    fit: BoxFit.fill,
                                  ),
                                  radius: 20.r,
                                ),
                                CustomSizedBoxWidth(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        textStyle: AppStyle(
                                                color: Color(0xFF847C3D),
                                                fontWeight: FontWeight.w400,
                                                size: 12)
                                            .textPoppinsMedium,
                                        title: 'John Corbuzier'),
                                    const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Send to ',
                                            style: TextStyle(
                                              color: Color(0xFF878D96),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 1.50,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Harvard University',
                                            style: TextStyle(
                                              color: Color(0xFF847C3D),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        CustomText(
                                            textStyle: AppStyle(
                                                    color: Color(0xFF878D96),
                                                    fontWeight: FontWeight.w400,
                                                    size: 12)
                                                .textPoppinsMedium,
                                            title: '4.9'),
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      textStyle: AppStyle(
                                              color: Color(0xFF847C3D),
                                              fontWeight: FontWeight.w500,
                                              size: 12)
                                          .textPoppinsMedium,
                                      title: '\$110',
                                    ),
                                    CustomText(
                                        textStyle: AppStyle(
                                                color: Color(0xFF878D96),
                                                fontWeight: FontWeight.w500,
                                                size: 12)
                                            .textPoppinsMedium,
                                        title: '1.5 km'),
                                    CustomText(
                                      textStyle: AppStyle(
                                              color: Color(0xFF847C3D),
                                              fontWeight: FontWeight.w400,
                                              size: 12)
                                          .textPoppinsMedium,
                                      title: '00:15',
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomButton(
                                    title: 'Decline',
                                    ontap: () {},
                                    height: 40.h,
                                    width: 155.w,
                                    color: Theme.of(context).scaffoldBackgroundColor,
                                    borderColor: Colors.red,
                                    AppStyle: AppStyle(
                                            color: Colors.red,
                                            size: 12.sp,
                                            fontWeight: FontWeight.w500)
                                        .textPoppinsMedium),
                                CustomSizedBoxWidth(width: 5.w),
                                CustomButton(
                                    title: 'Accept',
                                    color: Color(0xFF847C3D),
                                    ontap: () {
                                      Get.off(PicckrPickUp());
                                    },
                                    height: 40.h,
                                    width: 155.w,
                                    AppStyle: AppStyle(
                                            color: Colors.white,
                                            size: 12.sp,
                                            fontWeight: FontWeight.w500)
                                        .textPoppinsMedium),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppImages.map,
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 250.h),
              child: InkWell(
                onTap: () {
                  Get.offAll(SetRoute());
                  print('pressssssssssssssssssssssss');
                },
                child: Container(
                  width: 36,
                  height: 36,
                  padding: const EdgeInsets.all(8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
