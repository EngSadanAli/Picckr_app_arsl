import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picckr_app/Provider/Theme12/theme_manager.dart';
import 'package:picckr_app/Provider/bottomNavBarProvider.dart';
import 'package:picckr_app/Provider/profileScreenProvider/profileScreenProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Utils/appconstant.dart';
import 'package:picckr_app/Views/KYC/kyc_Screen.dart';
import 'package:picckr_app/Views/PickerFlow/Home/home_with%20no%20order.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/EditProfile.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/addressScreen.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/ratingScreen.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/walletsScreens.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/becamePicckRScreen.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/EditProfile.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/addressScreen.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/paymentMethod.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/ratingScreen.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/walletsScreens.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/ExploreGuessaccess.dart';
import 'package:picckr_app/Views/login_screen/login_screen.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SenderPickerProfileScreen extends StatefulWidget {
  const SenderPickerProfileScreen({super.key});

  @override
  State<SenderPickerProfileScreen> createState() => _SenderPickerProfileScreenState();
}

class _SenderPickerProfileScreenState extends State<SenderPickerProfileScreen  > {
  @override
  void initState() {
    _loadPreference();
    // TODO: implement initState
    super.initState();
  }
 bool  _picckRmode =false;
 bool  _themeMode =false;
 final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void _loadPreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() {
        _picckRmode = prefs.getBool('pickerMode') ?? false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // backgroundColor: Theme.of(context).hoverColor,
      appBar: AppBar(
        title: CustomText(
            textStyle: AppStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
                size: 14.sp)
                .textPoppinsMedium,
            title: 'Profile '),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,

        bottom: PreferredSize(
          child: Divider(
            // color: Theme.of(context).dividerColor, // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 18.h),
            child: InkWell(onTap: (){Get.to(SenderEditProfile());},
              child: CustomText(
                  textStyle: AppStyle(
                      color: Color(0xFF847C3D),
                      fontWeight: FontWeight.w400,
                      size: 14.sp)
                      .textPoppinsMedium,
                  title: 'Edit'),
            ),
          )
        ],
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
                                  child: Image.asset(AppImages.profile1)
                                )),

                          ],
                        ),
                        CustomSizedBoxHeight(height: 5.h),
                        CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w600,
                                size: 16.sp)
                                .textPoppinsMedium,
                            title: 'Jeremy Jason'),
                        CustomSizedBoxHeight(height: 5.h),
                        CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF878D96),
                                fontWeight: FontWeight.w400,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: 'JermyJson@gmail.comas'),
                        CustomSizedBoxHeight(height: 5.h),
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
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                          size: 16.sp)
                          .textPoppinsMedium,
                      title: 'Account'),
                  CustomSizedBoxHeight(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.to(SenderAddressScreen());
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
                        Icon(Icons.arrow_forward_ios_sharp, size: 14,color: Theme.of(context).primaryColor,)
                      ],
                    ),
                  ),
                  Divider(),

                  CustomSizedBoxHeight(height: 10),
                  GestureDetector(
                    onTap: () {
                      Get.to(SenderPaymentMethodScreen());
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
                        Icon(Icons.arrow_forward_ios_sharp, size: 14,color: Theme.of(context).primaryColor,)
                      ],
                    ),
                  ),

                  Divider(),
                  CustomSizedBoxHeight(height: 10),
                  GestureDetector(onTap: (){Get.to(SenderRatingScreen());},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF878D96),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: ''
                                'Rating and Reviews'),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 14,
                          color: Theme.of(context).primaryColor,

                        )
                      ],
                    ),
                  ),
                  Divider(),
                  CustomSizedBoxHeight(height: 10),
                  GestureDetector(onTap: (){
                    Get.to(KycScreen());
                    // paymentBottomSheet(context);
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
                            title: ''
                                'KYC'),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 14,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  CustomSizedBoxHeight(height: 10),
                  GestureDetector(onTap: (){Get.to(BecamePicckR());},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF878D96),
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: ''
                                'Become PicckR'),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 14,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  CustomSizedBoxHeight(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          textStyle: AppStyle(
                              color: Color(0xFF878D96),
                              fontWeight: FontWeight.w500,
                              size: 14.sp)
                              .textPoppinsMedium,
                          title: 'PicckR mode'),
                      Spacer(),
                      CustomText(
                          textStyle: AppStyle(
                              color: AppConstant.pickrMode ? Color(0xFF847C3D):Color(0xFF878D96),
                              fontWeight: FontWeight.w500,
                              size: 14.sp)
                              .textPoppinsMedium,
                          title:AppConstant.pickrMode ? 'On':'off'), CustomSizedBoxWidth(width: 10),
                      SizedBox(height: 20.h,width: 30.w,
                        child: Transform.scale(
                          scale: 0.8,
                          // Adjust this value to change the size
                          child: Switch(
                            inactiveThumbColor: const Color(0xFF878D96),
                            activeColor: Color(0xFF847C3D),
                            value: AppConstant.pickrMode,
                            onChanged: (newValue) async {
                              final bottomProvider = Provider.of<BottomProvider>(context, listen: false);

                              final SharedPreferences prefs = await SharedPreferences.getInstance(); // Get the SharedPreferences instance
                              await prefs.setBool('pickerMode', newValue); // Save the new value

                              setState(() {
                                AppConstant.pickrMode = newValue; // Update the state variable with the new value
                              });

                              if( AppConstant.pickrMode) {
                                Get.to(Home());
                                bottomProvider.resetIndex();// Navigate to the PicckR mode home screen
                              } else {
                                Get.to(GuessHome());

                                bottomProvider.resetIndex();// Navigate to the guest mode home screen
                              }
                            },
                          ),

                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  CustomSizedBoxHeight(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          textStyle: AppStyle(
                              color: Color(0xFF878D96),
                              fontWeight: FontWeight.w500,
                              size: 14.sp)
                              .textPoppinsMedium,
                          title: 'Apperance'),
                      Spacer(),
                      CustomText(
                          textStyle: AppStyle(
                              color: _themeMode? Color(0xFF847C3D):Color(0xFF878D96),
                              fontWeight: FontWeight.w500,
                              size: 14.sp)
                              .textPoppinsMedium,
                          title:_themeMode? 'Light mode':'Dark mode'),
                      CustomSizedBoxWidth(width: 10),
                      SizedBox(height: 20.h,width: 30.w,
                        child: Transform.scale(
                          scale: 0.8,
                          // Adjust this value to change the size
                          child: Consumer<ThemeNotifier>(builder: (context, provider, child) {
                            return
                              Switch(
                                onChanged: (bool value) async {

                                  final prefs = await SharedPreferences.getInstance();
                                  prefs.setBool("themeValue", value);
                                  provider.setTheme(themeValue: value);
                                },
                                // onChanged: toggleSwitch,
                                value: AppConstant.themValue,

                                activeColor: Color(0xFF847C3D),
                                // activeTrackColor: Colors.blueAccent,
                                // inactiveThumbColor: Colors.white,
                                // inactiveTrackColor: Colors.grey,
                              );

                          },),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  CustomSizedBoxHeight(height: 10),
                  InkWell(onTap: (){Get.to(LoginScreen());},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: ''
                                'Sign out'),
                        Icon(
                          Icons.arrow_forward_ios_sharp,color: Colors.red,
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
      backgroundColor: Theme.of(context).primaryColor,
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
                        title: 'Add Email Adress'),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                            size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Email Adress'),
                    CustomSizedBoxHeight(height: 10),
                    AppTextFormField(
                        controller: TextEditingController(),
                        toop: 0,
                        botm: 0,
                        hintText: 'Input your Email Address'),
                  ],
                ),
              ),
              CustomSizedBoxHeight(height: 50.h),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: CustomButton(
                  title: ''
                      'Add Email Adress',
                  ontap: () {},
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
        );
      },
    );
  }

  void adressBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).primaryColor,
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
                        title: 'Adress'),
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
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
                      onTap: () {
                        AddAdressBottomSheet(context);
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
              CustomSizedBoxHeight(height: 10.h),
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
              CustomSizedBoxHeight(height: 50.h),
            ],
          ),
        );
      },
    );
  }

  int selectedContainerIndex = -1;

  void selectContainer(int index) {
    selectedContainerIndex = index;
    setState(() {

    });
  }


  void AddAdressBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Theme.of(context).primaryColor,
        context: context,
        builder: (context) {
          return StatefulBuilder( // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
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
                    CustomSizedBoxHeight(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                          CustomSizedBoxHeight(height: 10),
                          Row(
                            children: [
                              InkWell(onTap: () {
                                selectContainer(1);
                                setState(() {

                                });
                              },
                                child: Container(
                                  width: 88,
                                  height: 36,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: selectedContainerIndex == 1 ? Color(
                                        0xFF847C3D) : Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF444444)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      Icon(Icons.home, size: 12,),
                                      CustomText(
                                          textStyle: AppStyle(
                                              color: Color(0xFF444444),
                                              fontWeight: FontWeight.w500,
                                              size: 12.sp)
                                              .textPoppinsMedium,
                                          title: 'Home'),

                                    ],),),
                              ),
                              CustomSizedBoxWidth(width: 20.w),
                              InkWell(onTap: () {
                                selectContainer(2);
                                setState(() {

                                });
                              },
                                child: Container(
                                  width: 88,
                                  height: 36,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: selectedContainerIndex == 2 ? Color(
                                        0xFF847C3D) : Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF444444)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,

                                    children: [
                                      Icon(Icons.shopping_bag, size: 12,),
                                      CustomText(
                                          textStyle: AppStyle(
                                              color: Color(0xFF444444),
                                              fontWeight: FontWeight.w500,
                                              size: 12.sp)
                                              .textPoppinsMedium,
                                          title: 'Office'),

                                    ],),),
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
                              title: 'Building Name'),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
                              toop: 0,
                              botm: 0,
                              hintText: 'Input a building name'),
                          CustomSizedBoxHeight(height: 10),
                          CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF444444),
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'House Number'),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
                              toop: 0,
                              botm: 0,
                              hintText: 'e.g 456'),
                          CustomSizedBoxHeight(height: 10),
                          CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF444444),
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Set location'),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
                              toop: 0,
                              botm: 0,
                              hintText: 'set location',
                              prefixIcon: Icon(
                                  Icons.location_on, color: Color(0xFF444444),
                                  size: 16)),
                          CustomSizedBoxHeight(height: 10),
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 50.h),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title: ''
                            'Add Address',
                        ontap: () {},
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
              );
            },
          );
        });}
  void paymentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).primaryColor,
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
              CustomSizedBoxHeight(height: 10),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
    setState(() {

    });
  }
  void addCardBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Theme.of(context).primaryColor,
        context: context,
        builder: (context) {
          return StatefulBuilder( // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
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
                    CustomSizedBoxHeight(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                              InkWell(onTap: () {
                                selectedCard(1);
                                setState(() {

                                });
                              },
                                child: Container(
                                  width: 88,
                                  height: 36,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: selectedcard == 1 ? Color(
                                        0xFF847C3D) : Colors.white,
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
                                      title: 'Debit Card'),),
                              ),
                              CustomSizedBoxWidth(width: 20.w),
                              InkWell(onTap: () {
                                selectedCard(2);
                                setState(() {

                                });
                              },
                                child: Container(
                                  width: 88,
                                  height: 36,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: selectedcard == 2 ? Color(
                                        0xFF847C3D) : Colors.white,
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
                                  ),),
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
                              title: 'Card holder Name'),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
                              toop: 0,
                              botm: 0,
                              hintText: 'Input your card holder name'),
                          CustomSizedBoxHeight(height: 10),
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
                              Image.asset(AppImages.visa,height: 14.h,),
                              CustomSizedBoxWidth(width: 10.w),
                              Image.asset(AppImages.visalogo,height: 14.h,),
                            ],
                          ),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
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
                              Container(
                                width: 75,
                                height: 44,
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(border: InputBorder.none,hintText: 'mm'),
                                ),),
                              CustomSizedBoxWidth(width: 10),
                              Text('/',style: TextStyle(fontSize: 15),),
                              CustomSizedBoxWidth(width: 10),
                              Container(
                                width: 75,
                                height: 44,
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(border: InputBorder.none,hintText: 'dd'),
                                ),),

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
                          Container(
                            width: 75,
                            height: 44,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(border: InputBorder.none,hintText: '123'),
                            ),),
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 50.h),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title: ''
                            'Add card',
                        ontap: () {},
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
              );
            },
          );
        });}
}
