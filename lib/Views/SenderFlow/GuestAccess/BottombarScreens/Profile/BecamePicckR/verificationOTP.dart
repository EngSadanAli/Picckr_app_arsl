import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/vehicalverification.dart';
import 'package:picckr_app/Views/profileInformation/profile_information_screen.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:pinput/pinput.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationOtpPicckr extends StatefulWidget {
  VerificationOtpPicckr({super.key});

  @override
  State<VerificationOtpPicckr> createState() => _VerificationOtpPicckrState();
}

class _VerificationOtpPicckrState extends State<VerificationOtpPicckr> {
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
              title: 'Vertification'),
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
        bottomNavigationBar: Container(height: 75.h,child: Column(children: [
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomButton(
              title: 'Next',
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
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      textStyle: AppStyle(
                              color: Color(0xFF847C3D),
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                          .textPoppinsMedium,
                      title: 'OTP Verification'),
                  CustomSizedBoxHeight(height: 10.h),
                  CustomText(
                      textStyle: AppStyle(
                              color: Color(0xFF444444),
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                          .textPoppinsMedium,
                      title:
                          'The OTP code will be sent to the phone number +1 555-123-4567'),
                  CustomSizedBoxHeight(height: 5.h),
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 30,
                      ),
                      child: Pinput(
                        length: 5,
                        obscureText: true,
                        obscuringCharacter:'*',
                        controller: pinController,
                        focusNode: focusNode,
                        closeKeyboardWhenCompleted: true,

                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsUserConsentApi,
                        listenForMultipleSmsOnAndroid: true,


                        separatorBuilder: (index) => const SizedBox(width: 8),
                        validator: (value) {
                          return value == '22222' ? null : '3/3 The OTP code you entered is invalid. Please enter the correct OTP code.';
                        },
                        // onClipboardFound: (value) {
                        //   debugPrint('onClipboardFound: $value');
                        //   pinController.setText(value);
                        // },
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        onCompleted: (pin) {
                          debugPrint('onCompleted: $pin');
                        },
                        onChanged: (value) {
                          debugPrint('onChanged: $value');
                        },
                        cursor: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              width: 22,
                              height: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          textStyle: AppStyle(
                                  color: Color(0xFF878D96),
                                  fontWeight: FontWeight.w700,
                                  size: 14.sp)
                              .textPoppinsMedium,
                          title: 'Don\' received code?'),
                      InkWell(
                        onTap: () {},
                        child: CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF847C3D),
                                    fontWeight: FontWeight.w700,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Resend'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ]),
        ));
  }
}
