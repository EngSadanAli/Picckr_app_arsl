import 'package:flutter/material.dart';
import 'package:picckr_app/Provider/profileScreenProvider/KycProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/KYC/ApprovelWaiting.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/becamePicckRScreen.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/training.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/ExploreGuessaccess.dart';

import 'package:picckr_app/Views/SenderFlow/Signin/SigninExplore.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PicckRAccount extends StatefulWidget {
  PicckRAccount({super.key});

  @override
  State<PicckRAccount> createState() => _PicckRAccountState();
}

class _PicckRAccountState extends State<PicckRAccount> {
  int? selectedValue;

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
            title: 'PicckR Account'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(
            onTap: () {
              Get.to(BecamePicckR());
            },
            child: Icon(Icons.arrow_back_ios_new_sharp,color: Theme.of(context).primaryColor,)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(onTap: (){Get.to(GuessHome());},
              child: Text(
                'Skip',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF847C3D),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          )
        ],
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You have to complete your PicckR account',
              style: TextStyle(
                color: Color(0xFF847C3D),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 1.50,
              ),
            ),
            CustomSizedBoxHeight(height: 10.h),
            Text(
              'Banking Information',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [



                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    CustomSizedBoxHeight(height: 10),

                    CustomText(
                        textStyle: AppStyle(
                            color: Theme.of(context).primaryColor,
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
                                color: Theme.of(context).primaryColor,
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
                            color: Theme.of(context).primaryColor,
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
                          padding: const EdgeInsets.symmetric(horizontal: 16,),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor,),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(border: InputBorder.none,hintText: 'mm',hintStyle: TextStyle(color: Color(0xFF878D96))),
                          ),),
                        CustomSizedBoxWidth(width: 10),
                        Text('/',style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor,),),
                        CustomSizedBoxWidth(width: 10),
                        Container(
                          width: 75,
                          height: 44,
                          padding: const EdgeInsets.symmetric(horizontal: 16, ),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color:Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(border: InputBorder.none,hintText: 'dd',hintStyle: TextStyle(color: Color(0xFF878D96))),
                          ),),

                      ],
                    ),
                    CustomSizedBoxHeight(height: 10),
                    CustomText(
                        textStyle: AppStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                            size: 14.sp)
                            .textPoppinsMedium,
                        title: 'CVV'),
                    CustomSizedBoxHeight(height: 10),
                    Container(
                      width: 75,
                      height: 44,
                      padding: const EdgeInsets.symmetric(horizontal: 16, ),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor,),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(border: InputBorder.none,hintText: '123',hintStyle: TextStyle(color: Color(0xFF878D96))),
                      ),),
                  ],
                ),

              ],
            )

          ],
        ),
      ),
      bottomNavigationBar: Container(height: 75.h,child: Column(children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomButton(
            title: 'Next',
            ontap: () {
              Get.offAll(()=>PicckRTraining());
            },
            color: Color(0xFF847C3D),
            AppStyle: AppStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                size: 12.sp)
                .textPoppinsMedium,
          ),
        ),
      ],)),
    );
  }


}
