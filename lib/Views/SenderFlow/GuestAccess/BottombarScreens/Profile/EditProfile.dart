import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:picckr_app/Provider/profileScreenProvider/profileScreenProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/forget_password/ForgetPassword.dart';
import 'package:picckr_app/Views/sign_up_Screen/verificationOTP.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SenderEditProfile extends StatefulWidget {
  SenderEditProfile({super.key});

  @override
  State<SenderEditProfile> createState() => _SenderEditProfileState();
}

class _SenderEditProfileState extends State<SenderEditProfile> {
  bool isFormValid = false; // Step 1 and 2
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{3}$');

  void _updateFormState() {
    // Step 3
    setState(() {
      isFormValid = _formKey.currentState?.validate() ?? false; // Step 5
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
            title: 'Edit Profile'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
            )),
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Consumer<ProfileScreenProvider>(
                builder: (context, provider, child) {
                  return Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
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
                                  : Image.asset(AppImages.profile1))),
                      Container(
                        width: 28,
                        height: 28,
                        padding: const EdgeInsets.all(4),
                        decoration: ShapeDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            provider.showDialogeBox(context);
                          },
                          child: Icon(
                            Icons.camera_alt,
                            color: Color(0xFF847C3D),
                            size: 20,
                          ),
                        )),
                      )
                    ],
                  );
                },
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Full Name',
                            style: AppStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w700,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            children: [
                          TextSpan(
                            text: '',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700),
                          )
                        ])),
                    CustomSizedBoxHeight(height: 5.h),
                    TextFormField(
                      // inputFormatters: [
                      //   FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z ]*$')),
                      // ],
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      onChanged: (value) => _updateFormState(),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Your Full Name';
                        }
                        else if (!RegExp(r'^[a-zA-Z ]*$').hasMatch(value)) {
                          return 'Please enter only alphabets';
                        };
                      },
                      style: TextStyle(color: Colors.grey),

                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(
                                0xFF847C3D), // You can change the color as you want
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors
                                .red, // You can change the color as you want
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          // This property is added to maintain the red border when the field is focused and contains an error
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors
                                .red, // Define a color for the focused error state
                          ),
                        ),
                      ),
                    ),
                    CustomSizedBoxHeight(height: 24.h),
                    RichText(
                        text: TextSpan(
                            text: 'Email',
                            style: AppStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w700,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            children: [
                          TextSpan(
                            text: '',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700),
                          )
                        ])),
                    CustomSizedBoxHeight(height: 5.h),
                    AppTextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Email ';
                        } else if (!_emailRegex.hasMatch(value)) {
                          return 'Please enter a valid email address.';
                        }
                        return null;
                      },
                      onChanged: (value) => _updateFormState(),
                      controller: emailController,
                      hintText: 'Input your Email Address ',
                      maxline: 1,
                    ),
                    CustomSizedBoxHeight(height: 24.h),
                    RichText(
                        text: TextSpan(
                            text: 'Phone Number',
                            style: AppStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w700,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            children: [
                          TextSpan(
                            text: '',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700),
                          )
                        ])),
                    CustomSizedBoxHeight(height: 5.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 110.w,
                            child: IntlPhoneField(
                              onChanged: (value) => _updateFormState(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Country Code';
                                }
                                return null;
                              },

                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left:
                                        10 // Adjust the bottom padding to align the icons to the bottom

                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Color(0xFF847C3D),
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),

                              showCursor: false,
                              // initialCountryCode: 'PK',
                              disableLengthCheck: true,

                              dropdownIconPosition: IconPosition.trailing,
                              dropdownIcon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Theme.of(context)
                                    .primaryColor, // Set to a color that is visible on your app's background color in both dark and light themes
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              maxLength: 15,
                              keyboardType: TextInputType.number,
                              onChanged: (value) => _updateFormState(),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter your Phone number';
                                }
                                return null;
                              },
                              style: const TextStyle(color: Colors.grey),
                              decoration: const InputDecoration(
                                hintText: 'Enter your Phone number',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Color(0xFF847C3D),
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                    CustomSizedBoxHeight(height: 10.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 85.h,
        child: Column(
          children: [
            Divider(),
            CustomButton(
              title: 'Save Changes',
              ontap: isFormValid
                  ? () {
                      if (_formKey.currentState!.validate()) {
                        Get.to(() => VerificationOtp());
                      }
                    }
                  : () {},
              color: isFormValid ? Color(0xFF847C3D) : Color(0xFF444444),
              AppStyle: AppStyle(
                      color: isFormValid ? Colors.white : Color(0xFF878D96),
                      fontWeight: FontWeight.w500,
                      size: 12.sp)
                  .textPoppinsMedium,
            ),
            CustomSizedBoxHeight(height: 10.h),
          ],
        ),
      ),
    );
  }
}
