import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/login_screen/login_screen.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool securePassword = true;
  bool isFormValid = false; // Step 1 and 2
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{3}$');
  void _updateFormState() { // Step 3
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
            title: 'Forgot Password'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(onTap: (){Get.back();},
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
        padding:  EdgeInsets.symmetric(vertical: 20.h),
        child: Column(

          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      textStyle: AppStyle(
                          color: Color(0xFF847C3D),
                          fontWeight: FontWeight.w700,
                          size: 14.sp)
                          .textPoppinsMedium,
                      title: 'Enter your email address to reset password'),
                  CustomSizedBoxHeight(height: 24.h),

                  CustomText(
                      textStyle: AppStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          size: 14.sp)
                          .textPoppinsMedium,
                      title: 'Email Address'),
                  CustomSizedBoxHeight(height: 5),
                  Form(key: _formKey,
                    child: AppTextFormField(
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
                  ),
                  CustomSizedBoxHeight(height: 5.h),
                  CustomText(
                      textStyle: AppStyle(
                          color: Color(0xFF878D96),
                          fontWeight: FontWeight.w700,
                          size: 14.sp)
                          .textPoppinsMedium,
                      title: 'Authentication link will be sent to the email'),

                ],
              ),
            ),


            Expanded(
              child:
              Container(), // This will take all the available space between the TextFormFields and the button
            ),
            Divider(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomButton(
                title: 'Reset Password',
                  ontap:isFormValid? () {
                    if(_formKey.currentState!.validate()){
                      Get.offAll(LoginScreen());}
                  }:(){},

                color:isFormValid?Color(0xFF847C3D):Color(0xFF444444),
                AppStyle: AppStyle(
                    color:isFormValid? Colors.white:Color(0xFF878D96),
                    fontWeight: FontWeight.w500,
                    size: 12.sp)
                    .textPoppinsMedium,
              ),
            ),
        ]),
      ));
  }
}
