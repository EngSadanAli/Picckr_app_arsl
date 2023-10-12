import 'package:flutter/material.dart';
import 'package:picckr_app/Provider/profileScreenProvider/KycProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/KYC/ApprovelWaiting.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/ApprovelWaiting.dart';

import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class VehicalVerification extends StatefulWidget {
  VehicalVerification({super.key});

  @override
  State<VehicalVerification> createState() => _VehicalVerificationState();
}

class _VehicalVerificationState extends State<VehicalVerification> {
  int? selectedValue;

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                textStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
                title: 'Additional Verification'),
            CustomSizedBoxHeight(height: 10.h),
            Text(
              'Proof of insurance',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 1.50,
              ),
            ),



            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                CustomSizedBoxHeight(height: 10.h),
                Consumer<KycProvider>(builder:(context, provider, child) {
                  return   InkWell(onTap: (){provider.showDialogeBoxfront(context);},
                    child: Container(
                        width: 343,
                        height: 44,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFDDE1E6)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt),
                              CustomSizedBoxWidth(width: 5.w),
                              CustomText(
                                  textStyle: TextStyle(
                                    color: Color(0xFF444444),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                  title:'Take a proof of insurance photo'),
                              Spacer(),
                              // Icon(Icons.close)

                            ])),
                  );
                },)
              ,
                CustomSizedBoxHeight(height: 10.h),
                CustomText(
                    textStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    title: 'Vehicle registration'),
                CustomSizedBoxHeight(height: 10.h),
                Consumer<KycProvider>(builder:(context, provider, child) {
                  return InkWell(onTap: (){provider.showDialogeback(context);},
                    child: Container(
                        width: 343,
                        height: 44,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFDDE1E6)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt),
                              CustomSizedBoxWidth(width: 5.w),
                              CustomText(
                                  textStyle: TextStyle(
                                    color: Color(0xFF444444),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                  title:'Take a vehicle verification photo'),
                              Spacer(),
                              // Icon(Icons.close)

                            ])),
                  );
                },),

                CustomSizedBoxHeight(height: 10.h),
                CustomText(
                    textStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    title: 'Bank Verification number'),
                CustomSizedBoxHeight(height: 10.h),
                Consumer<KycProvider>(builder:(context, provider, child) {
                  return InkWell(onTap: (){provider.showDialogeback(context);},
                    child: Container(
                        width: 343,
                        height: 44,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFDDE1E6)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt),
                              CustomSizedBoxWidth(width: 5.w),
                              CustomText(
                                  textStyle: TextStyle(
                                    color: Color(0xFF444444),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                  title:'111 2222 3333 4444'),
                              Spacer(),
                              // Icon(Icons.close)

                            ])),
                  );
                },),

              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(height: 75.h,child: Column(children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomButton(
            title: 'Submit',
            ontap: () {
              Get.offAll(()=>VehicleVerificationwaiting());
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

  void bottonforInformationWhyneed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w700,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Information'),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          size: 18,
                          color: Color(0xFF847C3D),
                        ))
                  ],
                ),
              ),
              Divider(),
              CustomSizedBoxHeight(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: CustomText(
                    textStyle: AppStyle(
                            color: Color(0xFF847C3D),
                            fontWeight: FontWeight.w500,
                            size: 14.sp)
                        .textPoppinsMedium,
                    title: 'We use BVN to verify the following'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: '1.Name'),
                    CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: '2.Email Address'),
                    CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: '3.Phone Number'),
                  ],
                ),
              ),
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomText(
                    textStyle: AppStyle(
                            color: Color(0xFF878D96),
                            fontWeight: FontWeight.w400,
                            size: 14.sp)
                        .textPoppinsMedium,
                    title:
                        'Confirming your BVN helps us to ensure security and verify your identity.'),
              ),
              CustomSizedBoxHeight(height: 50.h),
            ],
          ),
        );
      },
    );
  }
}
