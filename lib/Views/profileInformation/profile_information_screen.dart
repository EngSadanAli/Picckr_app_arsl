import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picckr_app/Provider/profileScreenProvider/profileScreenProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/KYC/ApprovelWaiting.dart';
import 'package:picckr_app/Views/KYC/kyc_Screen.dart';
import 'package:picckr_app/Views/login_screen/login_screen.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ProfileInformationScreen extends StatefulWidget {
  ProfileInformationScreen({super.key});

  @override
  State<ProfileInformationScreen> createState() =>
      _ProfileInformationScreenState();
}

class _ProfileInformationScreenState extends State<ProfileInformationScreen> {
  TextEditingController emailController = TextEditingController();
  bool isFormValid = false; //
  final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{3}$');
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    size: 14.sp)
                .textPoppinsMedium,
            title: 'Profile Information'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
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
      bottomNavigationBar: Container(
        height: 75.h,
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: CustomButton(
                title: ''
                    'Save',
                ontap: () {
                  Get.to(KycScreen());
                },
                color: Color(0xFF847C3D),
                AppStyle: AppStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        size: 12.sp)
                    .textPoppinsMedium,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBoxHeight(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ProfileScreenProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      children: [
                        Stack(
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
                                  color: Color(0xFFF0E796),
                                ),
                                child: ClipOval(
                                  child: provider.image != null
                                      ? Image.file(
                                          File(provider.image!.path),
                                          fit: BoxFit.fill,
                                        )
                                      : Icon(
                                          Icons.person,
                                          size: 70.h,
                                        ),
                                )),
                            Container(
                              width: 28,
                              height: 28,
                              padding: const EdgeInsets.all(4),
                              decoration: ShapeDecoration(
                                color: Color(0xFF121619),
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
                                  color: Color(0xFFF0E796),
                                  size: 20,
                                ),
                              )),
                            )
                          ],
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF847C3D),
                                    fontWeight: FontWeight.w600,
                                    size: 16.sp)
                                .textPoppinsMedium,
                            title: 'Jeremy Jason'),
                        CustomSizedBoxHeight(height: 10.h),
                        CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: '(+1) 212-456-7891'),
                      ],
                    );
                  },
                )
              ],
            ),
            CustomSizedBoxHeight(height: 10),
            Divider(),
            CustomSizedBoxHeight(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      textStyle: AppStyle(
                              color: Color(0xFF444444),
                              fontWeight: FontWeight.w600,
                              size: 16.sp)
                          .textPoppinsMedium,
                      title: 'Other Information'),
                  CustomSizedBoxHeight(height: 20),
                  InkWell(
                    onTap: () {
                      emailAdressBottomSheet(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w500,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Email Address'),
                        Icon(Icons.arrow_forward_ios_sharp, size: 14)
                      ],
                    ),
                  ),
                  Divider(),
                  CustomSizedBoxHeight(height: 10),
                  InkWell(
                    onTap: () {
                      adressBottomSheet(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w500,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Address'),
                        Icon(Icons.arrow_forward_ios_sharp, size: 14)
                      ],
                    ),
                  ),
                  Divider(),
                  CustomSizedBoxHeight(height: 10),
                  InkWell(
                    onTap: () {
                      paymentBottomSheet(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w500,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Payment Method'),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void emailAdressBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Add Email Address'),
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
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                    left: 20.w,
                    right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF444444),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Email Address'),
                    CustomSizedBoxHeight(height: 10),
                    Form(
                      key: _formKey,
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
                          toop: 0,
                          botm: 0,
                          hintText: 'Input your Email Address'),
                    ),
                  ],
                ),
              ),
              CustomSizedBoxHeight(height: 50.h),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: CustomButton(
                  title: ''
                      'Add Email Address',
                  ontap: isFormValid
                      ? () {
                          Get.to(LoginScreen());
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
        );
      },
    );
  }

  void adressBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Address'),
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Save address (0/3)'),
                    InkWell(
                      onTap: () async {
                        AddAdressBottomSheet(context);
                        // Navigator.pop(context);
                      },
                      child: CustomText(
                          textStyle: AppStyle(
                                  color: Color(0xFF847C3D),
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                              .textPoppinsMedium,
                          title: 'Add Address'),
                    ),
                  ],
                ),
              ),
              CustomSizedBoxHeight(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You don’t have saved address.\nPlease add address first',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF878D96),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
              CustomSizedBoxHeight(height: 100.h),
            ],
          ),
        );
      },
    );
  }

  int selectedContainerIndex = -1;

  void selectContainer(int index) {
    selectedContainerIndex = index;
    setState(() {});
  }

  TextEditingController name = TextEditingController();
  TextEditingController housenumber = TextEditingController();
  TextEditingController location = TextEditingController();
  String addressType = "";

  void AddAdressBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Container(
                    height: 550.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  textStyle: AppStyle(
                                          color: Color(0xFF847C3D),
                                          fontWeight: FontWeight.w500,
                                          size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Add new Adress'),
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
                        CustomSizedBoxHeight(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    textStyle: AppStyle(
                                            color: Color(0xFF444444),
                                            fontWeight: FontWeight.w500,
                                            size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Address Type'),
                                CustomSizedBoxHeight(height: 5),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        selectContainer(1);
                                        addressType = 'House';
                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 88,
                                        height: 36,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: selectedContainerIndex == 1
                                              ? Color(0xFFF0E796)
                                              : Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 0.50,
                                                color: Color(0xFF444444)),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.home,
                                              size: 12,
                                            ),
                                            CustomText(
                                                textStyle: AppStyle(
                                                        color:
                                                            Color(0xFF444444),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        size: 12.sp)
                                                    .textPoppinsMedium,
                                                title: 'Home'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomSizedBoxWidth(width: 20.w),
                                    InkWell(
                                      onTap: () {
                                        selectContainer(2);
                                        addressType = 'Office';
                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 88,
                                        height: 36,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: selectedContainerIndex == 2
                                              ? Color(0xFFF0E796)
                                              : Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 0.50,
                                                color: Color(0xFF444444)),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              size: 12,
                                            ),
                                            CustomText(
                                                textStyle: AppStyle(
                                                        color:
                                                            Color(0xFF444444),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        size: 12.sp)
                                                    .textPoppinsMedium,
                                                title: 'Work'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                CustomSizedBoxHeight(height: 5),
                                CustomText(
                                    textStyle: AppStyle(
                                            color: Color(0xFF444444),
                                            fontWeight: FontWeight.w500,
                                            size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Building Name'),
                                CustomSizedBoxHeight(height: 5),
                                AppTextFormField(
                                    controller: name,
                                    onChanged: (value) => _updateFormState(),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter a Building Name ';
                                      }
                                      return null;
                                    },
                                    toop: 0,
                                    botm: 0,
                                    hintText: 'Input a building name'),
                                CustomSizedBoxHeight(height: 5),
                                CustomText(
                                    textStyle: AppStyle(
                                            color: Color(0xFF444444),
                                            fontWeight: FontWeight.w500,
                                            size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '${addressType} Number'),
                                CustomSizedBoxHeight(height: 5),
                                AppTextFormField(
                                    onChanged: (value) => _updateFormState(),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter a ${addressType} Number';
                                      }
                                      return null;
                                    },
                                    controller: housenumber,
                                    toop: 0,
                                    botm: 0,
                                    hintText: 'e.g 456'),
                                CustomSizedBoxHeight(height: 5),
                                CustomText(
                                    textStyle: AppStyle(
                                            color: Color(0xFF444444),
                                            fontWeight: FontWeight.w500,
                                            size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Set location'),
                                CustomSizedBoxHeight(height: 5),
                                AppTextFormField(
                                    controller: location,
                                    onChanged: (value) => _updateFormState(),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter a Location ';
                                      }
                                      return null;
                                    },
                                    toop: 0,
                                    botm: 0,
                                    hintText: 'set location',
                                    prefixIcon: Icon(Icons.location_on,
                                        color: Color(0xFF444444), size: 16)),
                                CustomSizedBoxHeight(height: 5),
                              ],
                            ),
                          ),
                        ),
                        CustomSizedBoxHeight(height: 20.h),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          child: CustomButton(
                            title: ''
                                'Add Address',
                            ontap: isFormValid ? () {} : () {},
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
              );
            },
          );
        });
  }

  void paymentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Payment method'),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Save card'),
                    InkWell(
                      onTap: () {
                        addCardBottomSheet(context);
                      },
                      child: CustomText(
                          textStyle: AppStyle(
                                  color: Color(0xFF847C3D),
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                              .textPoppinsMedium,
                          title: 'Add card'),
                    ),
                  ],
                ),
              ),
              CustomSizedBoxHeight(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You don’t have saved card.\nPlease add card first',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF878D96),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
              CustomSizedBoxHeight(height: 50.h),
            ],
          ),
        );
      },
    );
  }

  int selectedcard = -1;

  void selectedCard(int index) {
    selectedcard = index;
    setState(() {});
  }

  TextEditingController holdername = TextEditingController();
  TextEditingController cardnumber = TextEditingController();
  TextEditingController expirydateMonth = TextEditingController();
  TextEditingController expirydateDay = TextEditingController();
  TextEditingController cvv = TextEditingController();

  void addCardBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(

                child: Padding(
                  padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                textStyle: AppStyle(
                                        color: Color(0xFF847C3D),
                                        fontWeight: FontWeight.w500,
                                        size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Add payment method'),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                textStyle: AppStyle(
                                        color: Color(0xFF444444),
                                        fontWeight: FontWeight.w500,
                                        size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Card Type'),
                            CustomSizedBoxHeight(height: 10),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    selectedCard(1);
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 88,
                                    height: 36,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: selectedcard == 1
                                          ? Color(0xFFF0E796)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFF444444)),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    child: CustomText(
                                        textStyle: AppStyle(
                                                color: Color(0xFF444444),
                                                fontWeight: FontWeight.w500,
                                                size: 12.sp)
                                            .textPoppinsMedium,
                                        title: 'Debit Card'),
                                  ),
                                ),
                                CustomSizedBoxWidth(width: 10.w),
                                InkWell(
                                  onTap: () {
                                    selectedCard(2);
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 88,
                                    height: 36,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: selectedcard == 2
                                          ? Color(0xFF847C3D)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFF444444)),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    child: Center(
                                      child: CustomText(
                                          textStyle: AppStyle(
                                                  color: Color(0xFF444444),
                                                  fontWeight: FontWeight.w500,
                                                  size: 12.sp)
                                              .textPoppinsMedium,
                                          title: 'Credit Card'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CustomSizedBoxHeight(height: 5),
                            CustomText(
                                textStyle: AppStyle(
                                        color: Color(0xFF444444),
                                        fontWeight: FontWeight.w500,
                                        size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Card holder Name'),
                            CustomSizedBoxHeight(height: 5),
                            AppTextFormField(
                                onChanged: (value) => _updateFormState(),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a holder Name ';
                                  }else if (!RegExp(r'^[a-zA-Z ]*$').hasMatch(value)) {
                                    return 'Please enter only alphabets';
                                  }
                                  return null;
                                },
                                controller: holdername,
                                toop: 0,
                                botm: 0,
                                hintText: 'Input your card holder name'),
                            CustomSizedBoxHeight(height: 5),
                            Row(
                              children: [
                                CustomText(
                                    textStyle: AppStyle(
                                            color: Color(0xFF444444),
                                            fontWeight: FontWeight.w500,
                                            size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Card Number'),
                                Spacer(),
                                Image.asset(
                                  AppImages.visa,
                                  height: 14.h,
                                ),
                                CustomSizedBoxWidth(width: 10.w),
                                Image.asset(
                                  AppImages.visalogo,
                                  height: 14.h,
                                ),
                                CustomSizedBoxWidth(width: 10.w),
                              ],
                            ),
                            CustomSizedBoxHeight(height: 10),
                            AppTextFormField(
                                keyboard: TextInputType.phone,
                                onChanged: (value) => _updateFormState(),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a Card Number ';
                                  }
                                  return null;
                                },
                                controller: cardnumber,
                                toop: 0,
                                botm: 0,
                                hintText: 'Ex: 1234 4567 1234 1234'),
                            CustomSizedBoxHeight(height: 10),
                            CustomText(
                                textStyle: AppStyle(
                                        color: Color(0xFF444444),
                                        fontWeight: FontWeight.w500,
                                        size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Expiry Date'),
                            CustomSizedBoxHeight(height: 10),
                            Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                  child: AppTextFormField(
                                      keyboard: TextInputType.phone,
                                      onChanged: (value) => _updateFormState(),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter Correct Date';
                                        }
                                        return null;
                                      },
                                      controller: expirydateMonth,
                                      hintText: '05'),
                                ),
                                CustomSizedBoxWidth(width: 10),
                                Text(
                                  '/',
                                  style: TextStyle(fontSize: 15),
                                ),
                                CustomSizedBoxWidth(width: 10),
                                SizedBox(
                                  width: 50,
                                  child: AppTextFormField(
                                      keyboard: TextInputType.phone,
                                      onChanged: (value) => _updateFormState(),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter Correct Date';
                                        }
                                        return null;
                                      },
                                      controller: expirydateDay,
                                      hintText: '21'),
                                ),
                              ],
                            ),
                            CustomSizedBoxHeight(height: 10),
                            CustomText(
                                textStyle: AppStyle(
                                        color: Color(0xFF444444),
                                        fontWeight: FontWeight.w500,
                                        size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'CVV'),
                            CustomSizedBoxHeight(height: 10),
                            SizedBox(
                              width: 50,
                              child: AppTextFormField(
                                  keyboard: TextInputType.phone,
                                  onChanged: (value) => _updateFormState(),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter CVV';
                                    }
                                    return null;
                                  },
                                  controller: cvv,
                                  hintText: 'cvv'),
                            ),
                          ],
                        ),
                      ),
                      CustomSizedBoxHeight(height: 10.h),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: CustomButton(
                          title: ''
                              'Add card',
                          ontap: isFormValid ? () {} : () {},
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
              );
            },
          );
        });
  }
}
