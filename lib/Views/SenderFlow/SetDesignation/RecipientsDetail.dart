import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/FindDesignation/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/SetDesignation/pickUpdetail.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';

class ReciptientDetailScreen extends StatefulWidget {
  ReciptientDetailScreen({super.key});

  @override
  State<ReciptientDetailScreen> createState() => _ReciptientDetailScreenState();
}

class _ReciptientDetailScreenState extends State<ReciptientDetailScreen> {
  bool isFormValid = false;

  // Step 1 and 2
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _updateFormState() {
    // Step 3
    setState(() {
      isFormValid = _formKey.currentState?.validate() ?? false; // Step 5
    });
  }

  void _clearForm() {
    // Step 3
    setState(() {
      phoneController.clear();
      nameController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0.r),
          topRight: Radius.circular(30.0.r),
        ),
        child: Container(
          height: 490.h, // Set the height as needed

          child: SingleChildScrollView(
            child: Form(key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSizedBoxHeight(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const Text(
                      'Recipient Detail',
                      style: TextStyle(
                        color: Color(0xFF847C3D),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                  ),
                  CustomSizedBoxHeight(height: 10.h),
                  Divider(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Harvard University',
                              style: TextStyle(
                                color: Color(0xFF847C3D),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(SetRouteG());
                              },
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xFF847C3D),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            )
                          ],
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        Text(
                          'Massachusetts Hall, Cambridge, MA 02138, United States of America',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Recipient Detail',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                      color: Color(0xFFCB3A31),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _clearForm();
                              },
                              child: Text(
                                'Clear details',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF847C3D),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        CustomSizedBoxHeight(height: 5.h),
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
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
                        CustomSizedBoxHeight(height: 5.h),
                        Text(
                          'Phone number',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 110.w,
                                child: IntlPhoneField(
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Country Code';
                                    }
                                    return null;
                                  },
                                  initialCountryCode: 'PK',

                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
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
                                    color: Theme.of(context)
                                        .primaryColor, // Set to a color that is visible on your app's background color in both dark and light themes
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  // autofocus: true,
                                  maxLength: 15,
                                  controller: phoneController,
                                  onChanged: (value) => _updateFormState(),

                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter your Phone number';
                                    }
                                    return null;
                                  },
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
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
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 12.h),
                          width: 150.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 12.h),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFDDE1E6)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Color(
                                    0xFF847C3D,
                                  ),
                                ),
                                CustomSizedBoxWidth(width: 10.w),
                                Text(
                                  'Save Address',
                                  style: TextStyle(
                                    color: Color(0xFF444444),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 1.50,
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  // CustomSizedBoxHeight(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomButton(
                      title: 'Next',
                      ontap: isFormValid
                          ? () {
                              if (_formKey.currentState!.validate()) {
                                Get.to(PickUpDetail());
                              }
                            }
                          : () {},
                      color:isFormValid?Color(0xFF847C3D):Color(0xFF444444),
                      AppStyle: AppStyle(
                          color:isFormValid? Colors.white:Color(0xFF878D96),
                              fontWeight: FontWeight.w500,
                              size: 12.sp)
                          .textPoppinsMedium,
                    ),
                  ),
                  CustomSizedBoxHeight(height: 10.h),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppImages.map,
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 250.h),
              child: InkWell(
                onTap: () {
                  Get.back();
                  print('pressssssssssssssssssssssss');
                },
                child: Container(
                  width: 36,
                  height: 36,
                  padding: const EdgeInsets.all(8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Icon(Icons.arrow_back_ios,
                      color: Theme.of(context).primaryColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
