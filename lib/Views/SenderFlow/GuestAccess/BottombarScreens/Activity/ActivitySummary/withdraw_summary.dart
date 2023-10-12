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

class WithDrawSummaryPicckR extends StatelessWidget {
  const WithDrawSummaryPicckR({super.key});

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
            title: 'Withdraw History'),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor:  Color(0xFFCB3A31).withOpacity(.3),
                    radius: 25,
                    child: Image.asset(AppImages.withdraw,fit: BoxFit.fill,),
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
                          padding: EdgeInsets.all(5),
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
                                color:Color(0xFF4BB543),
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
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          textStyle: AppStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                              size: 14.sp)
                              .textPoppinsMedium,
                          title: 'Withdrawal Purposes'),
                      Row(
                        children: [
                         Image.asset(AppImages.visalogo2,height: 40.h,width: 40.h,),
                          CustomSizedBoxWidth(width: 10),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            CustomText(
                                textStyle: AppStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600,
                                    size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Bank of America'),
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Debits card (*1234)'),
                          ],)

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            CustomSizedBoxHeight(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomText(
                  textStyle: AppStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      size: 14.sp)
                      .textPoppinsMedium,
                  title: 'Withdrawal amount'),
            ),
            CustomSizedBoxHeight(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child:  Container(
                width: 343,
                height: 44,
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 12),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
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
              )
            ),
            CustomSizedBoxHeight(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 80.h,
          child: Column(
            children: [
              Divider(),
              CustomButton(
                title: 'Back',
                ontap: () {
                  Get.back();
                },
                color: Color(0xFF847C3D),
                AppStyle: AppStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    size: 12.sp)
                    .textPoppinsMedium,
              )
            ],
          )),
    );
  }
}
