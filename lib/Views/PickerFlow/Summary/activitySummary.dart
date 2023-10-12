import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:flutter_dash/flutter_dash.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

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
              title: 'Order History'),
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
              child: Icon(Icons.arrow_back_ios,color: Theme.of(context).primaryColor,)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFF0E796),
                      radius: 25,
                      child: Image.asset(AppImages.scooter),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomText(
                          textStyle: AppStyle(
                                  color: Color(0xFF878D96),
                                  fontWeight: FontWeight.w500,
                                  size: 12)
                              .textPoppinsMedium,
                          title: 'June 20 2023, 09:02 PM',
                        ),
                        CustomSizedBoxHeight(height: 5.h),
                        Container(
                            width: 69,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0xFF4BB543).withOpacity(.3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Center(
                              child: Text(
                                'Complete',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF4BB543),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Delivery History'),
                    CustomSizedBoxHeight(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Column(
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
                                width: 295.w,
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
                    ),
                    CustomSizedBoxHeight(height: 10),
                    CustomText(
                        textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Price'),
                    CustomSizedBoxHeight(height: 10),
                    Container(
                      width: 343,
                      height: 44,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: '\$100',
                          ),
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 10),
                    CustomText(
                        textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Items details'),
                    CustomSizedBoxHeight(height: 10),
                    CustomText(
                        textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Package type'),
                    CustomSizedBoxHeight(height: 10),
                    Container(
                      width: 343,
                      height: 44,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Electronic',
                          ),
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 10),
                    CustomText(
                        textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Estimates item weight (Kg)'),
                    CustomSizedBoxHeight(height: 10),
                    Container(
                      width: 343,
                      height: 44,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText(
                            textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: '5',
                          ),
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 10),
                    Divider(),
                    CustomText(
                        textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Sender\'s feedback'),
                    CustomSizedBoxHeight(height: 10),
                    CustomText(
                        textStyle: AppStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                            size: 14.sp)
                            .textPoppinsMedium,
                        title: 'What went great?'),
                    CustomSizedBoxHeight(height: 10),
                    Wrap(spacing: 10,
                      children: [



                        ChoiceChip(backgroundColor:Theme.of(context).scaffoldBackgroundColor,label: Text('Route Choice',style: TextStyle(color: Theme.of(context).primaryColor)), selected: false,shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),),
                        ChoiceChip(label: Text('Pickr attitude',style: TextStyle(color: Theme.of(context).primaryColor)), backgroundColor: Theme.of(context).scaffoldBackgroundColor,selected: false,shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),),
                        ChoiceChip(label: Text('Pickup time',style: TextStyle(color: Theme.of(context).primaryColor)), backgroundColor: Theme.of(context).scaffoldBackgroundColor,selected: false,shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),),
                        ChoiceChip(label: Text('Excellent services',style: TextStyle(color: Theme.of(context).primaryColor),), backgroundColor: Theme.of(context).scaffoldBackgroundColor,selected: false,shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),),

                      ],
                    ),
                    CustomSizedBoxHeight(height: 10.h),


                  ],
                ),
              ),
              Divider(),
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomText(
                    textStyle: AppStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                        size: 14.sp)
                        .textPoppinsMedium,
                    title: 'Any other feedback for Cooper Septimus?'),
              ),
              CustomSizedBoxHeight(height: 10),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 343,
                  height: 44,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        textStyle: AppStyle(
                            color: Color(0xFF878D96),
                            fontWeight: FontWeight.w400,
                            size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Thank you',
                      ),
                    ],
                  ),
                ),
              ),
              CustomSizedBoxHeight(height: 20),
            ],
          ),
        ),bottomNavigationBar:Container(height:90.h,child: Column(children: [
          Divider(),
      CustomButton(
        title: 'Back',
        ontap: () {Get.back();},
        color: Color(0xFF847C3D),
        AppStyle: AppStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            size: 12.sp)
            .textPoppinsMedium,
      )
    ],)),);
  }
}
