import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:picckr_app/Provider/profileScreenProvider/profileScreenProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/verificationOTP.dart';
import 'package:picckr_app/Views/forget_password/ForgetPassword.dart';
import 'package:picckr_app/Views/sign_up_Screen/verificationOTP.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


class BecamePicckR extends StatefulWidget {
  BecamePicckR({super.key});

  @override
  State<BecamePicckR> createState() => _BecamePicckRState();
}

class _BecamePicckRState extends State<BecamePicckR> {


bool checkbox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            textStyle: AppStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
                size: 18.sp)
                .textPoppinsMedium,
            title: 'Become PicckR'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(onTap: (){Get.back();},
            child: Icon(Icons.arrow_back_ios,color: Theme.of(context).primaryColor,)),
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 10.h),
          child: Column(
            children: [
              Center(
                child: Consumer<ProfileScreenProvider>(builder: (context, provider, child) {
                  return   Container(
                      width: 100,
                      height: 100,
                      // padding: const EdgeInsets.all(14.29),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        // borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF847C3D),
                      ),
                      child: ClipOval(
                          child: provider.image != null
                              ? Image.file(
                            File(provider.image!.path),
                            fit: BoxFit.fill,
                          )
                              : Image.asset(AppImages.profile1)
                      ));
                },),
              ),

              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                      RichText(
                          text:TextSpan(
                              text: 'Full Name',style: AppStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                              .textPoppinsMedium,children: [
                            TextSpan(
                              text: '',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700),
                            )
                          ])

                      ),
                      CustomSizedBoxHeight(height: 5.h),
                      AppTextFormField(
                        controller: TextEditingController(),
                        toop: 0.h,
                        botm: 0.h,
                        hintText: 'Input your Full Name',

                        maxline: 1,
                      ),
                      CustomSizedBoxHeight(height: 24.h),
                      RichText(
                          text:TextSpan(
                              text: 'Email',style: AppStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                              .textPoppinsMedium,children: [
                            TextSpan(
                              text: '',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700),
                            )
                          ])

                      ),
                      CustomSizedBoxHeight(height: 5.h),
                      AppTextFormField(
                        controller: TextEditingController(),
                        toop: 0.h,
                        botm: 0.h,
                        hintText: 'jereyJson@gmail.com',

                        maxline: 1,
                      ),
                      CustomSizedBoxHeight(height: 24.h),
                      RichText(
                          text:TextSpan(
                              text: 'Phone Number',style: AppStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                              .textPoppinsMedium,children: [
                            TextSpan(
                              text: '',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700),
                            )
                          ])

                      ),
                      CustomSizedBoxHeight(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 153.w,
                            height: 44.h,
                            padding:
                            EdgeInsets.only(left: 09.w, top: 6.h),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                            child: const IntlPhoneField(
                              decoration: InputDecoration(border: InputBorder.none),
                              showCursor: false,
                              style: TextStyle(color: Color(0xFF878D96)),
                              initialCountryCode: 'PK',
                              disableLengthCheck: true,

                              dropdownIconPosition: IconPosition.trailing,
                              dropdownIcon: Icon(Icons.keyboard_arrow_down_outlined),

                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 225.w,
                              height: 44.h,
                              padding:  EdgeInsets.only(left: 5.w, top: 10.h),
                              clipBehavior: Clip.antiAlias,
                              decoration:  ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 0.50, color:  Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                              ),
                              child: TextFormField(
                                keyboardType: const TextInputType.numberWithOptions(),
                                decoration:  InputDecoration(
                                  hintStyle: TextStyle(color: Color(0xFF878D96)),
                                    border: InputBorder.none,
                                    hintText: 'Input phone number'),
                              ),
                            ),
                          )
                        ],
                      ),



                      CustomSizedBoxHeight(height: 10.h),
                      Row(
                        children: [
                        Checkbox(
                            fillColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return Color(0xFF847C3D); // Color of the checkbox when selected
                              }
                              return Colors.white; // Color of the checkbox when not selected
                            }),


                            value: checkbox, checkColor: Theme.of(context).primaryColor,onChanged: (value){
                          checkbox=value!;setState(() {

                          });
                        },activeColor: Color(0xFF847C3D)),
                        CustomSizedBoxWidth(width: 5),
                        Text(
                          'I agree that I am over 21 years old',
                          style: TextStyle(
                            color: Color(0xFF878D96),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        )
                      ],)




                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),bottomNavigationBar: Container(height:85.h,child: Column(children: [
      Divider(),
      CustomButton(
        title: 'Next',
        ontap: () {
          Get.to(()=>VerificationOtpPicckr());
        },
        color: Color(0xFF847C3D),
        AppStyle: AppStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            size: 12.sp)
            .textPoppinsMedium,
      ),
      CustomSizedBoxHeight(height: 10.h),
    ],)
      ,),
    );
  }
}
