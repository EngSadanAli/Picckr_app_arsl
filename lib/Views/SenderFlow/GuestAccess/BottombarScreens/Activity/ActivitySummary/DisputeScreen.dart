import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:flutter_dash/flutter_dash.dart';

class Dispute extends StatelessWidget {
  const Dispute({super.key});

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
            title: 'Dispute'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.mail),
              Text(
                'Open Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF847C3D),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.50,
                ),
              ),
              Text(
                'Please send your issues to our customer support email.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF878D96),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              )


            ],
          ),
        ],
      ),bottomNavigationBar:Container(height:90.h,child: Column(children: [
      Divider(),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          CustomButton(
            title: 'Open Email',

            ontap: () {Get.back();},
            color: Color(0xFF847C3D),
            AppStyle: AppStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                size: 12.sp)
                .textPoppinsMedium,
          ),
        ],
      )
    ],)),);
  }
}
