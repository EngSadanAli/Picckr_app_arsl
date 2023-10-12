import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Home/home_with%20no%20order.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/ExploreGuessaccess.dart';
import 'package:picckr_app/Views/forget_password/ForgetPassword.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool securePassword = true;
  bool isFormValid = false; // Step 1 and 2
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    phoneController.addListener(_updateFormState); // Step 4
    passwordController.addListener(_updateFormState); // Step 4
  }
  @override
  void dispose() {
    phoneController.dispose(); // Don't forget to dispose of the controllers
    passwordController.dispose(); // Don't forget to dispose of the controllers
    super.dispose();
  }

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
            title: 'Sign in'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(onTap: ()=>{Get.back()},
            child: Icon(Icons.arrow_back_ios,color:Theme.of(context).primaryColor)),
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
        child: Form(key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  textStyle: AppStyle(
                          color: Color(0xFF847C3D),
                          fontWeight: FontWeight.w700,
                          size: 14.sp)
                      .textPoppinsMedium,
                  title: 'One more step and you can enjoy the features'),
              CustomSizedBoxHeight(height: 24.h),
              CustomText(
                  textStyle: AppStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          size: 14.sp)
                      .textPoppinsMedium,
                  title: 'Phone Number'),
              CustomSizedBoxHeight(height: 5.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 110.w,
            child: IntlPhoneField(
              validator: (value) {
                if (value == null) {
                  return 'Country Code';
                }
                return null;
              },
              initialCountryCode: 'PK',

              style:  TextStyle(color: Colors.grey,),
              decoration:InputDecoration(

                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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

              onChanged: (value) => _updateFormState(),
              showCursor: false,
              // initialCountryCode: 'PK',
              disableLengthCheck: true,

              dropdownIconPosition: IconPosition.trailing,
              dropdownIcon: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Theme.of(context).primaryColor, // Set to a color that is visible on your app's background color in both dark and light themes
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              // autofocus: true,
              onChanged: (value) => _updateFormState(),
              maxLength: 15,
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter your Phone number';
                }
                return null;
              },
              style:  TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                hintText: 'Enter your Phone number',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
          ),]),

          CustomSizedBoxHeight(height: 16.h),
              CustomText(
                  textStyle: AppStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          size: 14.sp)
                      .textPoppinsMedium,
                  title: 'Password'),
              CustomSizedBoxHeight(height: 5.h),
        TextFormField(
          obscureText: securePassword,
          onChanged: (value) => _updateFormState(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
          style:  TextStyle(color: Colors.grey),
          decoration: InputDecoration(
            hintText: 'Enter your Password',
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                onTap: (){
                  setState(() {

                  });
                  securePassword= !securePassword;
                },
                child:securePassword? Icon(Icons.visibility_off,color: Color(0xFF847C3D),):Icon(Icons.visibility,color: Color(0xFF847C3D),)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFF847C3D), // You can change the color as you want
              ),
            ),
            errorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red, // You can change the color as you want
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(  // This property is added to maintain the red border when the field is focused and contains an error
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red, // Define a color for the focused error state
              ),
            ),
          ),
        ),



              CustomSizedBoxHeight(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(onTap:(){Get.to(()=>ForgetPassword());},
                    child: CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w700,
                                size: 14)
                            .textPoppinsMedium,
                        title: 'Forget Password'),
                  ),
                ],
              ),
              Expanded(
                child:
                    Container(), // This will take all the available space between the TextFormFields and the button
              ),
              CustomButton(
                title: 'Sign in ',
                ontap:isFormValid? () {
                  if(_formKey.currentState!.validate()){
                    Get.offAll(GuessHome());}
                  }:(){},


                color:isFormValid?Color(0xFF847C3D):Color(0xFF444444),
                AppStyle: AppStyle(
                        color:isFormValid? Colors.white:Color(0xFF878D96),
                        fontWeight: FontWeight.w500,
                        size: 12.sp)
                    .textPoppinsMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
