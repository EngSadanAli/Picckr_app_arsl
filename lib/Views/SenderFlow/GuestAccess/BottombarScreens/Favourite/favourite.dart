import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Messages/userMessageScreen.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Favourite/favDetail.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_dash/flutter_dash.dart';

class FavouriteScreen extends StatelessWidget {
   FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(
              textStyle: AppStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                  size: 18.sp)
                  .textPoppinsMedium,
              title: 'Favorites'),
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
        ),
        body: ListView.builder(itemCount: 10,
          itemBuilder: (context, index) {
          return  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
            child:
            GestureDetector(onTap: (){Get.to(FavouriteDetail());},
              child: Column(
                children: [

                  Container(
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(backgroundColor: Color(0xFFF0E796),child: Image.asset(AppImages.profile1),radius: 30,),
                          CustomSizedBoxWidth(width: 10.w),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF847C3D),
                                      fontWeight: FontWeight.w600,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Cooper Septimus'),
                              CustomText(
                                  textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'AM666EE • Toyota Prius Hybris'),
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
                            ],),
                          Spacer(),
                          Icon(Icons.favorite_sharp,color: Colors.red,)
                        ],)),
                  Divider(),


                ],
              ),
            ),
          );
        },)




      ),
    );
  }
}
