import 'package:flutter/material.dart';
import 'package:picckr_app/Provider/profileScreenProvider/KycProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/KYC/ApprovelWaiting.dart';
import 'package:picckr_app/Views/sign_up_Screen/verificationOTP.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class KycScreen extends StatefulWidget {
  KycScreen({super.key});

  @override
  State<KycScreen> createState() => _KycScreenState();
}

class _KycScreenState extends State<KycScreen> {
  int? selectedValue;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController bankVerificationNumber = TextEditingController();
  bool isFormValid = false; //

  void _updateFormState() {
    // Step 3
    setState(() {
      isFormValid = _formKey.currentState?.validate() ?? false; // Step 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 75.h,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomButton(
                  title: 'Upload',
                  ontap: isFormValid
                      ? () {
                          Get.to(() => ApprovelWaitingScreen());
                        }
                      : () {},
                  color: isFormValid ? Color(0xFF847C3D) : Color(0xFF444444),
                  AppStyle: AppStyle(
                          color: isFormValid ? Colors.white : Color(0xFF878D96),
                          fontWeight: FontWeight.w500,
                          size: 12.sp)
                      .textPoppinsMedium,
                ),
              ),
            ],
          ),
        ),
      ),
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
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Theme.of(context).primaryColor,
            )),
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: InkWell(
              onTap: () {
                Get.offAll(ApprovelWaitingScreen());
              },
              child: CustomText(
                  textStyle: AppStyle(
                          color: Color(0xFF847C3D),
                          fontWeight: FontWeight.w400,
                          size: 14.sp)
                      .textPoppinsMedium,
                  title: 'Skip'),
            ),
          )
        ],
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
                title: 'Add nationality'),
            CustomSizedBoxHeight(height: 10.h),
            Row(
              children: [
                Image.asset(
                  AppImages.nagiria,
                  width: 37.16,
                  height: 19.56,
                ),
                CustomSizedBoxWidth(width: 10),
                CustomText(
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                  title: 'Nigeria',
                ),
                Spacer(),
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Theme.of(context).primaryColor,
                  ),
                  child: Radio(
                      value: 1,
                      groupValue: selectedValue,
                      onChanged: (int? value) {
                        selectedValue = value!;
                        setState(() {});
                        selectedValue = value;
                      }),
                )
              ],
            ),
            Visibility(
                visible: selectedValue == 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        textStyle: TextStyle(
                          color: Color(0xFF878D96),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                        title:
                            'Confirming your BVN helps us verify your identity.'),
                    CustomSizedBoxHeight(height: 10.h),
                    CustomText(
                        textStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                        title: 'Bank Verification Number'),
                    CustomSizedBoxHeight(height: 10.h),
                    AppTextFormField(
                        controller: bankVerificationNumber,
                        onChanged: (value) => _updateFormState(),
                        keyboard: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a bank Verification Number ';
                          }
                          return null;
                        },
                        toop: 0,
                        botm: 0,
                        hintText: 'Ex: 1234 4567 1234 1234'),
                    CustomSizedBoxHeight(height: 10.h),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              bottonforInformationWhyneed(context);
                            },
                            child: Icon(Icons.info_outline,
                                color: Color(0xFF847C3D))),
                        CustomSizedBoxWidth(width: 10),
                        CustomText(
                          textStyle: TextStyle(
                            color: Color(0xFF847C3D),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                          title: 'Why we need your BVN?',
                        ),
                      ],
                    ),
                  ],
                )),
            Row(
              children: [
                Image.asset(
                  AppImages.usa,
                  width: 37.16,
                  height: 19.56,
                ),
                CustomSizedBoxWidth(width: 10),
                CustomText(
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                  title: 'United State of America',
                ),
                Spacer(),
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Theme.of(context).primaryColor,
                  ),
                  child: Radio(
                      value: 2,
                      groupValue: selectedValue,
                      onChanged: (int? value) {
                        selectedValue = value;
                        setState(() {});
                        selectedValue = value!;
                      }),
                )
              ],
            ),
            Visibility(
                visible: selectedValue == 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        textStyle: TextStyle(
                          color: Color(0xFF878D96),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                        title:
                            'You need to take a picture of the driver\'s license.'),
                    CustomSizedBoxHeight(height: 10.h),
                    CustomText(
                        textStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                        title: 'The front of the driving license'),
                    CustomSizedBoxHeight(height: 10.h),
                    Consumer<KycProvider>(
                      builder: (context, provider, child) {
                        return Container(
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
                                  InkWell(onTap: (){provider.showDialogeBoxfront(context);},
                                      child: Icon(Icons.camera_alt)),
                                  CustomSizedBoxWidth(width: 5.w),
                                  Expanded(
                                    child: CustomText(
                                        textStyle: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 1.50,
                                        ),
                                        title: '${provider.frontimage?.path ?? 'No image selected'}'),
                                  ),
                                  Spacer(),
                                  if (provider.frontimage != null)  // Only show the close icon if an image is selected
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {

                                          });
                                          provider.clearFrontImage();  // Clear the selected image when the close button is pressed
                                        },
                                        child: Icon(Icons.close,color: Theme.of(context).primaryColor,),
                                      ),
                                    ),
                                ]));
                      },
                    ),
                    CustomSizedBoxHeight(height: 10.h),
                    CustomText(
                        textStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                        title: 'The back of the driving license'),
                    CustomSizedBoxHeight(height: 10.h),
                    Consumer<KycProvider>(
                      builder: (context, provider, child) {
                        return Container(
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
                                  InkWell(onTap: (){provider.showDialogeback(context);},
                                      child: Icon(Icons.camera_alt)),
                                  CustomSizedBoxWidth(width: 5.w),
                                  Expanded(
                                    child: CustomText(
                                        textStyle: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 1.50,
                                        ),
                                        title: '${provider.BackImage?.path ?? 'No image selected'}'),
                                  ),
                                  Spacer(),
                                  if (provider.backImage != null)  // Only show the close icon if an image is selected
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {

                                          });
                                          provider.clearBackImage();  // Clear the selected image when the close button is pressed
                                        },
                                        child: Icon(Icons.close,color: Theme.of(context).primaryColor,),
                                      ),
                                    ),
                                ]));
                      },
                    ),
                    CustomSizedBoxHeight(height: 10.h),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void bottonforInformationWhyneed(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
