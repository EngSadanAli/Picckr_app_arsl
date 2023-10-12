import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/CancelFlow/canceledBySender.dart';
import 'package:picckr_app/Views/SenderFlow/FindDesignation/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/DisputeScreen.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/ExploreGuessaccess.dart';
import 'package:picckr_app/Views/SenderFlow/SetDesignation/pickUpdetail.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';

import 'package:flutter_dash/flutter_dash.dart';

class PicckrPickUp extends StatelessWidget {
  const PicckrPickUp({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSizedBoxHeight(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'PicckR is heading to the pick-up address',
                        style: TextStyle(
                          color: Color(0xFF847C3D),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 23,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC9F3FB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFF016DB2)),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '5 min',
                              style: TextStyle(
                                color: Color(0xFF016DB2),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                CustomSizedBoxHeight(height: 5.h),
                Divider(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Color(0xFFDDE1E6)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    AppImages.profile2,
                                    fit: BoxFit.fill,
                                  ),
                                  radius: 20.r,
                                ),
                                CustomSizedBoxWidth(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        textStyle: AppStyle(
                                                color: Color(0xFF847C3D),
                                                fontWeight: FontWeight.w400,
                                                size: 12)
                                            .textPoppinsMedium,
                                        title: 'John Corbuzier'),
                                    const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Send to ',
                                            style: TextStyle(
                                              color: Color(0xFF878D96),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 1.50,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Harvard University',
                                            style: TextStyle(
                                              color: Color(0xFF847C3D),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        CustomText(
                                            textStyle: AppStyle(
                                                    color: Color(0xFF878D96),
                                                    fontWeight: FontWeight.w400,
                                                    size: 12)
                                                .textPoppinsMedium,
                                            title: '4.9'),
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      textStyle: AppStyle(
                                              color: Color(0xFF847C3D),
                                              fontWeight: FontWeight.w500,
                                              size: 12)
                                          .textPoppinsMedium,
                                      title: '\$110',
                                    ),
                                    CustomText(
                                        textStyle: AppStyle(
                                                color: Color(0xFF878D96),
                                                fontWeight: FontWeight.w500,
                                                size: 12)
                                            .textPoppinsMedium,
                                        title: '1.5 km'),
                                    CustomText(
                                      textStyle: AppStyle(
                                              color: Color(0xFF847C3D),
                                              fontWeight: FontWeight.w400,
                                              size: 12)
                                          .textPoppinsMedium,
                                      title: '00:15',
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: AppTextFormField(
                                    fillColor: Color(0xFF878D96).withOpacity(.4),
                                    controller: TextEditingController(),
                                    hintText: 'Send message to John Corbuzier',
                                    botm: 5,
                                    toop: 0,
                                  ),
                                ),
                                CustomSizedBoxWidth(width: 5.w),
                                Container(
                                  width: 42,
                                  height: 32,
                                  padding: const EdgeInsets.all(8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFFF4F2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: Icon(Icons.favorite_sharp,
                                      color: Colors.red),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      CustomSizedBoxHeight(height: 5.h),
                      Container(
                        width: 343,
                        padding: const EdgeInsets.all(16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFFDDE1E6)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      child: Text(
                                        'Transaction pin code',
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 45.17,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFC9F3FB),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '1',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF016DB2),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      height: 45.17,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFC9F3FB),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '2',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF016DB2),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      height: 45.17,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFC9F3FB),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '3',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF016DB2),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      height: 45.17,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFC9F3FB),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '4',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF016DB2),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      height: 45.17,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFC9F3FB),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '5',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF016DB2),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      height: 45.17,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFC9F3FB),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '6',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF016DB2),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomSizedBoxHeight(height: 5.h),
                      Container(
                          width: 343,
                          padding: const EdgeInsets.all(16),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xFFDDE1E6)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Item details',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                              CustomSizedBoxHeight(height: 5.h),
                              Text(
                                'Package type',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                              CustomSizedBoxHeight(height: 5.h),
                              Container(
                                width: 311,
                                height: 44,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.50,
                                        color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Electronics',
                                          style: TextStyle(
                                            color: Color(0xFFC1C7CD),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomSizedBoxHeight(height: 5.h),
                              Text(
                                'Extimates item weight (kg)',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                              CustomSizedBoxHeight(height: 5.h),
                              Container(
                                width: 311,
                                height: 44,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.50, color: Color(0xFFDDE1E6)),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          '5',
                                          style: TextStyle(
                                            color: Color(0xFFC1C7CD),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomSizedBoxHeight(height: 5.h),
                            ],
                          )),
                      CustomSizedBoxHeight(height: 5.h),
                      Container(
                        padding: const EdgeInsets.all(16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFDDE1E6)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
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
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          title:
                                              '29 Everett St, Cambridge, MA 02138',
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
                                          width: 255.w,
                                          child: CustomText(
                                              textAlign: TextAlign.start,
                                              textStyle: AppStyle(
                                                      color: Color(0xFF878D96),
                                                      fontWeight:
                                                          FontWeight.w400,
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
                            ],
                          ),
                        ),
                      ),
                      CustomSizedBoxHeight(height: 5.h),
                      Container(
                        padding: const EdgeInsets.all(8),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFDDE1E6)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                textStyle: AppStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w600,
                                        size: 14.sp)
                                    .textPoppinsMedium,
                                title: 'Payment method'),
                            CustomSizedBoxHeight(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.wallet_outlined,
                                  color: Color(0xFF847C3D),
                                ),
                                CustomSizedBoxWidth(width: 10),
                                CustomText(
                                    textStyle: AppStyle(
                                            color: Color(0xFF878D96),
                                            fontWeight: FontWeight.w400,
                                            size: 12.sp)
                                        .textPoppinsMedium,
                                    title: 'PicckRPay'),
                                Spacer(),
                                CustomText(
                                    textStyle: AppStyle(
                                            color: Color(0xFF878D96),
                                            fontWeight: FontWeight.w600,
                                            size: 12.sp)
                                        .textPoppinsMedium,
                                    title: '\$100')
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            width: 150.w,
                            color: Theme.of(context).scaffoldBackgroundColor,
                            title: 'Dispute',
                            ontap: () {
                              Get.off(Dispute());
                            },
                            borderColor: Color(0xFF847C3D),
                            AppStyle: AppStyle(
                                    color: Color(0xFF847C3D),
                                    fontWeight: FontWeight.w500,
                                    size: 12.sp)
                                .textPoppinsMedium,
                          ),
                          CustomButton(
                            title: 'Cancel Order',
                            width: 150,
                            ontap: () {
                              cancelOrder(context);
                            },
                            color: Color(0xFF847C3D),
                            AppStyle: AppStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    size: 12.sp)
                                .textPoppinsMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
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
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void cancelOrder(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Confirmation',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF847C3D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.cancel, color: Color(0xFF847C3D)),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Container(
                                    width: 72,
                                    height: 72,
                                    padding: const EdgeInsets.all(10.29),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFF9CA),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(2571.43),
                                      ),
                                    ),
                                    child: Image.asset(
                                      AppImages.car,
                                      height: 50.h,
                                      width: 50.w,
                                    ),
                                  ),
                                  Container(
                                      width: 24,
                                      height: 24,
                                      padding: const EdgeInsets.all(5.60),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFFDDDD),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(28),
                                        ),
                                      ),
                                      child: Icon(
                                        size: 15,
                                        Icons.warning_amber,
                                        color: Colors.red,
                                      ))
                                ],
                              ),
                              CustomSizedBoxHeight(height: 10.h),
                              Text(
                                'Are you sure you want to cancel this order?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF847C3D),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 1.50,
                                ),
                              ),
                              CustomSizedBoxHeight(height: 10.h),
                              Expanded(
                                child: Text(
                                  'You will be charged \$5 if you cancel your order',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFCB3A31),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title: ''
                            'Cancel order',
                        ontap: () async {
                          await Get.offAll(() => CanceledBySenderActivityG());
                          Navigator.pop(context);
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
              );
            },
          );
        });
  }
}
