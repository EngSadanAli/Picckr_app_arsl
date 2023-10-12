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

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

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
            title: 'Rating & Reviews'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(onTap: (){Get.back();},
            child: Icon(Icons.arrow_back_ios)),
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: [
          Container(
          width: 343,
        margin: EdgeInsets.all(10),
          padding: const EdgeInsets.all(16),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            shape: RoundedRectangleBorder(

              side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child:Column(children: [
            Row(children: [
              CircleAvatar(child: Image.asset(AppImages.profile1),),
              CustomSizedBoxWidth(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CustomText(
                    textStyle: AppStyle(
                        color: Color(0xFF847C3D),
                        fontWeight: FontWeight.w600,
                        size: 14.sp)
                        .textPoppinsMedium,
                    title: 'John Doe'),
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
                        title: '5 • June 20 2023, 13:02 PM',),
                  ],
                ),

              ],)
            ],),
            Divider(),
            Text(
              'Feedback:\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
              style: TextStyle(
                color: Color(0xFF878D96),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            )

          ],)
          ,
        )
        ]);}
    ));
  }
}
