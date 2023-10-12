import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/FindDesignation/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/RealTimeTracking/listofPicckr.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:picckr_app/Widgets/customtext.dart';
class FindPicckR extends StatelessWidget {
  const FindPicckR({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10),(){Get.to(ListofPicckr());});
    return Scaffold(bottomSheet:ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0.r),
        topRight: Radius.circular(30.0.r),
      ),

      child: Container(
        height: 258.h, // Set the height as needed

        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: const Text(
                  'Find PicckR',
                  style: TextStyle(
                    color: Color(0xFF847C3D),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                  ),
                ),
              ),
              CustomSizedBoxHeight(height: 10.h),
              Divider(),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Connecting to your PicckR',
                          style: TextStyle(
                            color: Color(0xFF847C3D),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),



                      ],),

                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Please wait a moment and don\'t close this page because we are connecting a PicckR for you',
                  style: TextStyle(
                    color: Color(0xFF444444),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ),
              CustomSizedBoxHeight(height: 20.h),
              Center(
                child: LoadingAnimationWidget.stretchedDots(
                  color: Color(0xFF847C3D),
                  size:30,
                ),
              ),



            ],
          ),
        ),
      ),
    ),
      body:Container(height: double.infinity,width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppImages.map3,),fit: BoxFit.fill)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20.w,top: 250.h),
              child: InkWell(onTap: (){Get.offAll(SetRouteG());print('pressssssssssssssssssssssss');},
                child: Container(
                  width: 36,
                  height: 36,
                  padding: const EdgeInsets.all(8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),),child: Icon(Icons.arrow_back_ios,color: Theme.of(context).primaryColor,),),
              ),
            )
          ],
        ),),);
  }
  void withdraw(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF847C3D),
                                      fontWeight: FontWeight.w500,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Choose PicckR'),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF847C3D),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Cancel the Ride'),)]))
                   ]));


            },
          );
        });
  }
}
