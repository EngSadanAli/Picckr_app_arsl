import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/forget_password/ForgetPassword.dart';
import 'package:picckr_app/Views/sign_up_Screen/verificationOTP.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool securePassword = true;
  bool isFormValid = false; //
  bool checkBox1 = false;
  bool checkbox = false;
  TextEditingController nameController = TextEditingController();
  bool checkBox2 = false;

  void initState() {
    super.initState();

    passwordController.addListener(_updateFormState); // Step 4
  }

  void _updateFormState() {
    // Step 3
    setState(() {
      isFormValid = _formKey.currentState?.validate()  ?? false; // Step 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 75.h,
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomButton(
                title: 'Continue',
                ontap: isFormValid
                    ? () {
                        if (_formKey.currentState!.validate() && checkbox && checkBox2) {
                          Get.to(() => VerificationOtp());
                        }
                      }
                    : () {},
                color: isFormValid && checkbox && checkBox2 ? Color(0xFF847C3D) : Color(0xFF444444),
                AppStyle: AppStyle(
                        color: isFormValid&& checkbox && checkBox2 ? Colors.white : Color(0xFF878D96),
                        fontWeight: FontWeight.w500,
                        size: 12.sp)
                    .textPoppinsMedium,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: CustomText(
            textStyle: AppStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                    size: 18.sp)
                .textPoppinsMedium,
            title: 'Sign Up'),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                        text: '*',
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
                  maxLength: 100,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Full Name';
                    } else if (!RegExp(r'^[a-zA-Z ]*$').hasMatch(value)) {
                      return 'Please enter only alphabets';
                    }
                    return null;
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
                        color:
                            Colors.red, // You can change the color as you want
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
                        text: 'Phone Number',
                        style: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                                size: 14.sp)
                            .textPoppinsMedium,
                        children: [
                      TextSpan(
                        text: '*',
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
                CustomSizedBoxHeight(height: 16.h),
                RichText(
                    text: TextSpan(
                        text: 'Password',
                        style: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                                size: 14.sp)
                            .textPoppinsMedium,
                        children: [
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700),
                      )
                    ])),
                CustomSizedBoxHeight(height: 5.h),
                TextFormField(
                  obscureText: securePassword,
                  onChanged: (value) => _updateFormState(),
               maxLength: 20,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: 'Enter your Password',
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
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {});
                          securePassword = !securePassword;
                        },
                        child: securePassword
                            ? Icon(
                                Icons.visibility_off,
                                color: Color(0xFF847C3D),
                              )
                            : Icon(
                                Icons.visibility,
                                color: Color(0xFF847C3D),
                              )),
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
                        color:
                            Colors.red, // You can change the color as you want
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
                Row(
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                          unselectedWidgetColor:
                              Theme.of(context).primaryColor),
                      child: Checkbox(
                          value: checkbox,
                          onChanged: (value) {
                            checkbox = value!;
                            setState(() {});
                          },
                          activeColor: Color(0xFF847C3D)),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'I agree to ',
                              style: TextStyle(
                                color: Color(0xFF878D96),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms and Conditions',
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
                    )
                  ],
                ),
                Row(
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                          unselectedWidgetColor:
                              Theme.of(context).primaryColor),
                      child: Checkbox(
                        value: checkBox2,
                        onChanged: (value) {
                          checkBox2 = value!;
                          setState(() {});
                        },
                        activeColor: Color(0xFF847C3D),
                        // This is the color to use when the checkbox is checked
                        checkColor: Colors
                            .white, // This is the color to use for the check icon
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'I have to ',
                              style: TextStyle(
                                color: Color(0xFF878D96),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy and policy',
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
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
