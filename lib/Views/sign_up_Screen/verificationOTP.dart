import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/profileInformation/profile_information_screen.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:pinput/pinput.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationOtp extends StatefulWidget {
  VerificationOtp({super.key});

  @override
  State<VerificationOtp> createState() => _VerificationOtpState();
}

class _VerificationOtpState extends State<VerificationOtp> {
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  bool isFormValid = false; //

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  void _updateFormState() { // Step 3
    setState(() {
      isFormValid = formKey.currentState?.validate() ?? false; // Step 5
    });
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
          backgroundColor:Theme.of(context).scaffoldBackgroundColor,
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios_new_sharp,color:Theme.of(context).primaryColor)),
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
              title: 'Confirm',
              ontap: isFormValid
                  ? () {


                Get.off(()=>ProfileInformationScreen());
                Get.snackbar('Success', 'you have succefully created acoount',snackPosition:SnackPosition.TOP,icon: Icon(Icons.done,color: Colors.green,),backgroundColor: Color(0xFFDFF9DF),colorText: Color(0xFF4BB543));
              }:(){},
              color:isFormValid?Color(0xFF847C3D):Color(0xFF444444),
              AppStyle: AppStyle(
                  color: isFormValid ? Colors.white : Color(0xFF878D96),
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
    if (value == null || value.isEmpty) {
      return 'The OTP code cannot be empty';
    }},
                        // onClipboardFound: (value) {
                        //   debugPrint('onClipboardFound: $value');
                        //   pinController.setText(value);
                        // },
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        onCompleted: (pin) {
                          debugPrint('onCompleted: $pin');
                        },
                        onChanged: (value)=>{ _updateFormState()} ,
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
            Expanded(
              child:
                  Container(), // This will take all the available space between the TextFormFields and the button
            ),

          ]),
        ));
  }
}
