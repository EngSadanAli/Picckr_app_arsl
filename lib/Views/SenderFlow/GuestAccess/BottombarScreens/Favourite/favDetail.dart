import 'dart:io';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter/material.dart';
import 'package:picckr_app/Provider/profileScreenProvider/profileScreenProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/EditProfile.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/addressScreen.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/ratingScreen.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/walletsScreens.dart';
import 'package:picckr_app/Views/SenderFlow/FindDesignation/SetRoute.dart';
import 'package:picckr_app/Views/login_screen/login_screen.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class FavouriteDetail extends StatefulWidget {
  const FavouriteDetail({super.key});

  @override
  State<FavouriteDetail> createState() => _FavouriteDetailState();
}

class _FavouriteDetailState extends State<FavouriteDetail    > {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            textStyle: AppStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
                size: 14.sp)
                .textPoppinsMedium,
            title: 'PicckR Details '),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(onTap: (){Get.back();},
            child: Icon(Icons.arrow_back_ios,color: Theme.of(context).primaryColor,)),

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
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 14.sp)
                                    .textPoppinsMedium,
                                title: '4.9'),
                          ],
                        ),
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
                      title: 'Delivery History'),
                  CustomSizedBoxHeight(height: 5.h),
                  Container(
                    child: ExpansionTile(collapsedShape: InputBorder.none,shape: InputBorder.none,
                      title: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Sent to ',
                                  style: TextStyle(
                                    color: Color(
                                        0xFF878D96),
                                    fontSize: 12,
                                    fontFamily:
                                    'Poppins',
                                    fontWeight:
                                    FontWeight.w500,
                                    height: 1.50,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                  'Harvard University',
                                  style: TextStyle(
                                    color: Color(
                                        0xFF847C3D),
                                    fontSize: 12,
                                    fontFamily:
                                    'Poppins',
                                    fontWeight:
                                    FontWeight.w500,
                                    height: 1.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomText(
                              textStyle: AppStyle(
                                  color: Color(
                                      0xFF878D96),
                                  fontWeight:
                                  FontWeight
                                      .w400,
                                  size: 12)
                                  .textPoppinsMedium,
                              title:
                              'Today at 13:30 PM'),
                        ]),children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.radio_button_checked,
                                color: Colors.blue,
                              ),
                              Dash(
                                  direction: Axis.vertical,
                                  length: 90,
                                  dashLength: 5,
                                  dashColor: Color(0xFF878D96)),
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Sender',
                                ),
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Jeremy Jason',
                                ),
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: '212-111-2222',
                                ),
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Lesley University',
                                ),
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: '29 Everett St, Cambridge, MA 02138',
                                ),
                                CustomSizedBoxHeight(height: 10),
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Recipient',
                                ),
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'John Cena',
                                ),
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: '212-111-2222',
                                ),
                                CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Harvard University',
                                ),
                                SizedBox(
                                  width: 275.w,
                                  child: CustomText(
                                      textAlign: TextAlign.start,
                                      textStyle: AppStyle(
                                          color: Color(0xFF878D96),
                                          fontWeight: FontWeight.w400,
                                          size: 14.sp)
                                          .textPoppinsMedium,
                                      title:
                                      'Massachusetts Hall, Cambridge, MA 02138, United States of America'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )



                    ],),
                  ),

                  Divider(),
                  Container(
                    child: ExpansionTile(collapsedShape: InputBorder.none,shape: InputBorder.none,
                      title: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Sent to ',
                                    style: TextStyle(
                                      color: Color(
                                          0xFF878D96),
                                      fontSize: 12,
                                      fontFamily:
                                      'Poppins',
                                      fontWeight:
                                      FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                    'Harvard University',
                                    style: TextStyle(
                                      color: Color(
                                          0xFF847C3D),
                                      fontSize: 12,
                                      fontFamily:
                                      'Poppins',
                                      fontWeight:
                                      FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(
                                        0xFF878D96),
                                    fontWeight:
                                    FontWeight
                                        .w400,
                                    size: 12)
                                    .textPoppinsMedium,
                                title:
                                'Today at 13:30 PM'),
                          ]),children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.radio_button_checked,
                                  color: Colors.blue,
                                ),
                                Dash(
                                    direction: Axis.vertical,
                                    length: 90,
                                    dashLength: 5,
                                    dashColor: Color(0xFF878D96)),
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Sender',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Jeremy Jason',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '212-111-2222',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Lesley University',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '29 Everett St, Cambridge, MA 02138',
                                  ),
                                  CustomSizedBoxHeight(height: 10),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Recipient',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'John Cena',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '212-111-2222',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Harvard University',
                                  ),
                                  SizedBox(
                                    width: 275.w,
                                    child: CustomText(
                                        textAlign: TextAlign.start,
                                        textStyle: AppStyle(
                                            color: Color(0xFF878D96),
                                            fontWeight: FontWeight.w400,
                                            size: 14.sp)
                                            .textPoppinsMedium,
                                        title:
                                        'Massachusetts Hall, Cambridge, MA 02138, United States of America'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )



                      ],),
                  ),
                  Divider(),
                  Container(
                    child: ExpansionTile(collapsedShape: InputBorder.none,shape: InputBorder.none,
                      title: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Sent to ',
                                    style: TextStyle(
                                      color: Color(
                                          0xFF878D96),
                                      fontSize: 12,
                                      fontFamily:
                                      'Poppins',
                                      fontWeight:
                                      FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                    'Harvard University',
                                    style: TextStyle(
                                      color: Color(
                                          0xFF847C3D),
                                      fontSize: 12,
                                      fontFamily:
                                      'Poppins',
                                      fontWeight:
                                      FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(
                                        0xFF878D96),
                                    fontWeight:
                                    FontWeight
                                        .w400,
                                    size: 12)
                                    .textPoppinsMedium,
                                title:
                                'Today at 13:30 PM'),
                          ]),children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.radio_button_checked,
                                  color: Colors.blue,
                                ),
                                Dash(
                                    direction: Axis.vertical,
                                    length: 90,
                                    dashLength: 5,
                                    dashColor: Color(0xFF878D96)),
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Sender',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Jeremy Jason',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '212-111-2222',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Lesley University',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '29 Everett St, Cambridge, MA 02138',
                                  ),
                                  CustomSizedBoxHeight(height: 10),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Recipient',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'John Cena',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: '212-111-2222',
                                  ),
                                  CustomText(
                                    textStyle: AppStyle(
                                        color: Color(0xFF878D96),
                                        fontWeight: FontWeight.w400,
                                        size: 14.sp)
                                        .textPoppinsMedium,
                                    title: 'Harvard University',
                                  ),
                                  SizedBox(
                                    width: 275.w,
                                    child: CustomText(
                                        textAlign: TextAlign.start,
                                        textStyle: AppStyle(
                                            color: Color(0xFF878D96),
                                            fontWeight: FontWeight.w400,
                                            size: 14.sp)
                                            .textPoppinsMedium,
                                        title:
                                        'Massachusetts Hall, Cambridge, MA 02138, United States of America'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )



                      ],),
                  ),


                ],
              ),
            ),



          ],
        ),
      ),
      bottomNavigationBar: Container(height: 75.h,
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomButton(
                title: 'Request PicckR',
                ontap: () {
                  Get.off(SetRouteG());

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
                            color: Theme.of(context).primaryColor,
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
                                  color: Theme.of(context).primaryColor,
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
