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

class CanceledByPicckR extends StatelessWidget {
  const CanceledByPicckR({super.key});

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
            title: 'Review History'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,
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
                          padding: EdgeInsets.all(5),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0xFFCB3A31).withOpacity(.3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          child: Center(
                            child: Text(
                              'Canceled by PicckR',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFCB3A31),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Image.asset(AppImages.profile2),
                      radius: 50,
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Let’s rate ',
                            style: TextStyle(
                              color: Color(0xFF878D96),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'John Corbuzier',
                            style: TextStyle(
                              color: Color(0xFF847C3D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    CustomSizedBoxHeight(height: 10.h),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        CustomSizedBoxWidth(width: 5.w),
                        Icon(Icons.star, color: Colors.yellow),
                        CustomSizedBoxWidth(width: 5.w),
                        Icon(
                          Icons.star,
                          color: Color(0xFF878D96),
                        ),
                        CustomSizedBoxWidth(width: 5.w),
                        Icon(
                          Icons.star,
                          color: Color(0xFF878D96),
                        ),
                        CustomSizedBoxWidth(width: 5.w),
                        Icon(
                          Icons.star,
                          color: Color(0xFF878D96),
                        ),
                        CustomSizedBoxWidth(width: 5.w),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      textStyle: AppStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.w600,
                          size: 14.sp)
                          .textPoppinsMedium,
                      title: 'What went great?'),
                  CustomSizedBoxHeight(height: 10),
                  Wrap(
                    spacing: 10,
                    children: [
                      ChoiceChip(
                        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                        label: Text('Route Choice',style: TextStyle(color: Theme.of(context).primaryColor)),
                        selected: false,
                        shape: RoundedRectangleBorder(
                          side:
                          BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      ChoiceChip(
                        label: Text('Pickr attitude',style: TextStyle(color: Theme.of(context).primaryColor)),
                        selected: false,backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                        shape: RoundedRectangleBorder(
                          side:
                          BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      ChoiceChip(
                        label: Text('Pickup time',style: TextStyle(color: Theme.of(context).primaryColor)),
                        selected: false,backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                        shape: RoundedRectangleBorder(
                          side:
                          BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      ChoiceChip(
                        label: Text('Excellent services',style: TextStyle(color: Theme.of(context).primaryColor)),
                        selected: false,backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                        shape: RoundedRectangleBorder(
                          side:
                          BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                  CustomSizedBoxHeight(height: 10.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
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
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: AppTextFormField(
                  controller: TextEditingController(),
                  prefixIcon: Icon(Icons.border_color),
                  toop: 4,
                  botm: 0,
                  hintText: 'Picckr distance too far'),
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
                title: 'Submit',
                ontap: () {
                  // cancelOrder(context);
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

  void cancelOrder(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                                      color: Theme.of(context).scaffoldBackgroundColor,
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
                        ontap: () {
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
