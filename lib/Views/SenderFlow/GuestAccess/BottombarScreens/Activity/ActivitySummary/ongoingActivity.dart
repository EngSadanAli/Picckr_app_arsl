import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/SenderFlow/CancelFlow/canceledBySender.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/DisputeScreen.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:flutter_dash/flutter_dash.dart';

class OnGoingActivityG extends StatelessWidget {
  const OnGoingActivityG({super.key});

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
                    child: Image.asset(AppImages.car),
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
                            color: Color(0xFFC9F3FB),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          child: Center(
                            child: Text(
                              'ongoing',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF016DB2),
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
      Container(


        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(16),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.90, color: Color(0xFFDDE1E6)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFF0E796),
                      radius: 30,
                      child: Image.asset(AppImages.profile2),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFF0E796),
                      radius: 10,
                      child: Image.asset(AppImages.car),
                    ),

                  ],
                ),
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
              ],
            ),
            CustomSizedBoxHeight(height: 5.h),
            Row(children: [
              Expanded(child: AppTextFormField(controller: TextEditingController(), toop: 0, botm: 0, hintText: 'Send message to CooperSeptimus')),
            CustomSizedBoxWidth(width: 10.w)
            ,Icon(Icons.favorite_sharp,color: Colors.red,)],)
          ],
        ),),

            Container(


              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(16),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.90, color: Color(0xFFDDE1E6)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    title: 'Estimate weight (Kg)'),
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
                        title: '5',
                      ),
                    ],
                  ),
                ),
              ],
            ),),
      Container(

        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(16),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),child: Padding(
        padding: EdgeInsets.symmetric( vertical: 10.h),
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
            ),








          ],
        ),
      ),),
            Container(
            margin:  EdgeInsets.symmetric(horizontal: 10.w),
              padding: const EdgeInsets.all(16),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child:Column(crossAxisAlignment: CrossAxisAlignment.start,
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
            )



          ],
        ),
      ),bottomNavigationBar:
    Container(height:90.h,child: Column(children: [
      Divider(),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(
            width: 150.w,
            color: Theme.of(context).scaffoldBackgroundColor,
            title: 'Dispute',
            ontap: () {Get.off(Dispute());},
            borderColor:Color(0xFF847C3D) ,
            AppStyle: AppStyle(
                color: Color(0xFF847C3D),
                fontWeight: FontWeight.w500,
                size: 12.sp)
                .textPoppinsMedium,
          ),
          CustomButton(
            title: 'Cancel Order',
            width: 150,
            ontap: () {cancelOrder(context);

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
    ],)),);
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
                      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
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
                              Stack(alignment: Alignment.bottomRight,
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
                                      child: Icon(size:15,
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
                        ontap:  () async {
              await Get.to(() => CanceledBySenderActivityG());
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
