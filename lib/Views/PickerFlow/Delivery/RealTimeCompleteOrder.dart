import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Delivery/RealTimeCompleteOrder.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_dash/flutter_dash.dart';
class RealTimeTrackingCompleteOrder extends StatelessWidget {
  RealTimeTrackingCompleteOrder({super.key});
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomSheet:ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0.r),
        topRight: Radius.circular(30.0.r),
      ),

      child: Container(
        height: 358.h,
        color: Theme.of(context).scaffoldBackgroundColor,// Set the height as needed

        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'You are heading to the pick-up address',
                      style: TextStyle(
                        color: Color(0xFF847C3D),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    Container(
                      width: 45.w,
                      height: 23.h,
                      padding:  EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFFC9F3FB),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFF016DB2)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),child: Text(
                      '5 min',
                      style: TextStyle(
                        color: Color(0xFF016DB2),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),)
                  ],
                ),
              ),
              CustomSizedBoxHeight(height: 10.h),
              Divider(),

              Container(

                margin: EdgeInsets.all(10),
                padding: const EdgeInsets.all(16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.50, color: Color(0xFFDDE1E6)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child:Column(children: [
                  Row(children: [
                    CircleAvatar(child: Image.asset(AppImages.profile1),),
                    CustomSizedBoxWidth(width: 10),
                    Column(
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: 'John Doe'),
                        CustomSizedBoxHeight(height: 10.h),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF878D96),
                                  fontWeight: FontWeight.w400,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: '4.9',),
                          ],
                        ),
                      ],
                    ),


                  ],),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CustomSizedBoxHeight(height: 5.h),
                      Divider(),
                      AppTextFormField(controller: TextEditingController(), toop: 0, botm: 0, hintText: 'Send message to John Corbuzier'),
                      CustomSizedBoxHeight(height: 10.h),
                      CustomButton(
                        title: 'Complete order',
                        ontap: () {
                          // Get.off();
                          CompleteOrder(context);
                        },
                        color: Color(0xFF847C3D),
                        AppStyle: AppStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            size: 12.sp)
                            .textPoppinsMedium,
                      ),
                      CustomSizedBoxHeight(height: 10.h),



                    ],)



                ],)
                ,
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: const EdgeInsets.all(16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(

                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment method',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                  CustomSizedBoxHeight(height: 5.h),
                  Row(
                    children: [
                      Icon(
                        Icons.wallet_outlined,
                        color: Color(0xFF847C3D),
                      ),
                      CustomSizedBoxWidth(width: 5),
                      CustomText(
                          textStyle: AppStyle(
                              color: Color(0xFF878D96),
                              fontWeight: FontWeight.w400,
                              size: 12.sp)
                              .textPoppinsMedium,
                          title: 'PicckRPay'),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          // withdraw(context);
                        },
                        child: CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w600,
                                size: 12.sp)
                                .textPoppinsMedium,
                            title: '\$100'),
                      )
                    ],
                  ),

                ],),),
              CustomSizedBoxHeight(height: 10.h),
              Container(
                margin: EdgeInsets.all(10),
                padding: const EdgeInsets.all(16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(

                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
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
                          title: 'Extimates item weight (Kg)',
                        ),
                      ],
                    ),
                  ),

                ],),),
              CustomSizedBoxHeight(height: 10.h),
              Container(

                margin: EdgeInsets.all(10),
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
                                width: 255.w,
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
              CustomSizedBoxHeight(height: 20.h),
              Divider(),
              CustomSizedBoxHeight(height: 10.h),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(title: 'Cancel order', ontap: (){
                    CompleteOrder(context);
                  },AppStyle: TextStyle(color: Colors.red),borderColor: Colors.red,color: Theme.of(context).scaffoldBackgroundColor,),
                ],
              )



            ],
          ),
        ),
      ),
    ),
      body:Container(height: double.infinity,width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppImages.realtime,),fit: BoxFit.fill)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20.w,top: 50.h),
              child: InkWell(onTap: (){Get.offAll(SetRoute());print('pressssssssssssssssssssssss');},
                child: Container(
                  width: 36,
                  height: 36,
                  padding: const EdgeInsets.all(8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),),child: Icon(Icons.arrow_back_ios),),
              ),
            )
          ],
        ),),);
  }
  void CompleteOrder(BuildContext context) {
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
                                'Are you sure you want to complete this order?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF847C3D),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 1.50,
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
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(width: 150.w,
                            title:
                            'Back',
                            ontap:  () async {

                              Navigator.pop(context);
                            },
                            borderColor: Color(0xFF847C3D),
                            AppStyle: AppStyle(
                                color: Color(0xFF847C3D),
                                fontWeight: FontWeight.w500,
                                size: 12.sp)
                                .textPoppinsMedium,
                          ),
                          CustomButton(width: 150.w,
                            title:
                                'Yes, complete',
                            ontap:  () async {
                              await Get.to(() => CompleteOrder(context));
                              if (Navigator.canPop(context)) {
                                Navigator.pop(context);
                              }
                            },
                            color: Color(0xFF847C3D),
                            AppStyle: AppStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                size: 12.sp)
                                .textPoppinsMedium,
                          ),
                        ],
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
