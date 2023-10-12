import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appconstant.dart';
import 'package:picckr_app/Views/login_screen/login_screen.dart';
import 'package:picckr_app/Views/onBoadingScreens/onBoading_screen.dart';
import 'package:picckr_app/Views/sign_up_Screen/sign_up_screen.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';
import '../../Utils/AppImages.dart';
import '../../Utils/appStyle.dart';
import '../../Widgets/CustomButton/customButton.dart';
import '../../Widgets/customtext.dart';
import 'Components/signin_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignInOption extends StatefulWidget {
  const SignInOption({super.key});

  @override
  State<SignInOption> createState() => _OnBoadingScreebState();
}

class _OnBoadingScreebState extends State<SignInOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(elevation: 0,
            automaticallyImplyLeading: false,
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 16.h),
                child: InkWell(
                  onTap: () {
                    Get.offAll(OnBoadingScreen());
                  },
                  child: CustomText(
                      textStyle: AppStyle(
                              color: Color(0xFF847C3D),
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                          .textPoppinsMedium,
                      title: 'Cancel'),
                ),
              ),
            ],

          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: RichText(
                    text:  TextSpan(
                      text: 'Welcome to',
                      style: TextStyle(
                          color: Color(0xFF878D96),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700), // default text style
                      children: <TextSpan>[
                        TextSpan(
                          text: ' PicckR! ',
                          style: TextStyle(
                              color: Color(0xFF847C3D),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                child: CustomText(
                  textStyle: AppStyle(
                          color: Color(0xFF878D96),
                          fontWeight: FontWeight.w500,
                          size: 14.sp)
                      .textPoppinsMedium,
                  title:
                      "Move to the next step to enjoy the features in the application",
                ),
              ),
              CustomSizedBoxHeight(height: 80.h),
              Center(
                  child: Image.asset(
                'assets/images/4.png',
                height: 200.h,
                width: 200.w,
              )),
              Expanded(
                child:
                    Container(), // This will take all the available space between the TextFormFields and the button
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomButton(
                      title: 'Sign in ',
                      ontap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              width: 375.w,

                              decoration:  ShapeDecoration(
                                color: Theme.of(context).scaffoldBackgroundColor.withOpacity(.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                            textStyle: AppStyle(
                                                    color: Color(0xFF847C3D),
                                                    size: 14.sp,
                                                    fontWeight: FontWeight.w500)
                                                .textPoppinsMedium,
                                            title: 'Sign in '),
                                        InkWell(onTap:(){Navigator.pop(context);},
                                          child: Icon(
                                            Icons.close,
                                            color: Color(0xFF847C3D),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  CustomSizedBoxHeight(height: 10.h),
                                  Column(
                                    children: [
                                      SignInCustomButton(
                                        image: AppImages.phone,
                                        title: 'Use phone number ',
                                        ontap: () {
                                          Get.to(()=>LoginScreen());
                                        },
                                        color: Theme.of(context).scaffoldBackgroundColor,
                                        AppStyle: AppStyle(
                                                color: Theme.of(context).primaryColor,
                                                fontWeight: FontWeight.w500,
                                                size: 12.sp)
                                            .textPoppinsMedium,
                                      ),
                                      CustomSizedBoxHeight(height: 10.h),
                                      SignInCustomButton(
                                        image: AppImages.fb,
                                        title: 'Continue with Facebook',
                                        ontap: () {},
                                        color:Theme.of(context).scaffoldBackgroundColor,
                                        AppStyle: AppStyle(
                                                color: Theme.of(context).primaryColor,
                                                fontWeight: FontWeight.w500,
                                                size: 12.sp)
                                            .textPoppinsMedium,
                                      ),
                                      CustomSizedBoxHeight(height: 10.h),
                                      SignInCustomButton(
                                        image:AppImages.google,
                                        title: 'Continue with Google',
                                        ontap: () {},
                                        color: Theme.of(context).scaffoldBackgroundColor,
                                        AppStyle: AppStyle(
                                                color: Theme.of(context).primaryColor,
                                                fontWeight: FontWeight.w500,
                                                size: 12.sp)
                                            .textPoppinsMedium,
                                      ),
                                      CustomSizedBoxHeight(height: 10.h),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      color: Color(0xFF847C3D),
                      AppStyle: AppStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              size: 12)
                          .textPoppinsMedium,
                    ),
                    CustomSizedBoxHeight(height: 10),
                    CustomButton(borderColor: Color(0xFF847C3D),
                      title: 'Sign me up',
                      ontap: () {
                        Get.to(()=>SignUpScreen());
                      },
                      color: Theme.of(context).scaffoldBackgroundColor,
                      AppStyle: AppStyle(
                              color: Color(0xFF847C3D),
                              fontWeight: FontWeight.w500,
                              size: 12)
                          .textPoppinsMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
