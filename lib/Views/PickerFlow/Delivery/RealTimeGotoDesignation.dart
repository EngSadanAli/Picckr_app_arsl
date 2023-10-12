import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Delivery/RealTimeCompleteOrder.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Views/PickerFlow/Summary/cancelBypicckR.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_dash/flutter_dash.dart';

class RealTimeTrackingGoToDesignation extends StatelessWidget {
  RealTimeTrackingGoToDesignation({super.key});
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
        height: 358.h, // Set the height as needed

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
                    side: BorderSide(width: 1.50, color: Theme.of(context).primaryColor),
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
                        title: 'Go to Designation',
                        ontap: () {
                          verificationOtp(context);
                        },
                        color: Color(0xFF847C3D),
                        AppStyle: AppStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            size: 12.sp)
                            .textPoppinsMedium,
                      ),



                    ],)



                ],)
                ,
              ),
              CustomSizedBoxHeight(height: 10.h),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
color: Theme.of(context).scaffoldBackgroundColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
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
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
color: Theme.of(context).scaffoldBackgroundColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
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
                        side: BorderSide(width: 0.50, color:Theme.of(context).primaryColor),
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
                          color: AppColor.black,
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
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
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
              CustomSizedBoxHeight(height: 10.h),
              Divider(),
              CustomSizedBoxHeight(height: 10.h),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(title: 'Cancel order',color: Theme.of(context).scaffoldBackgroundColor, ontap: (){
                    cancelOrder(context);
                  },AppStyle: TextStyle(color: Colors.red),borderColor: Colors.red,),
                ],
              ),
              CustomSizedBoxHeight(height: 10.h)




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
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),),child: Icon(Icons.arrow_back_ios,color: Theme.of(context).primaryColor,),),
              ),
            )
          ],
        ),),);
  }
  void withdraw(BuildContext context) {
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF847C3D),
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Withdraw'),
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                size: 18,
                                color: Color(0xFF847C3D),
                              ))
                        ],
                      ),
                    ),
                    Divider(),
                    CustomSizedBoxHeight(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomSizedBoxHeight(height: 10),
                          CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF444444),
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
                                      color: Color(0xFF444444),
                                      fontWeight: FontWeight.w500,
                                      size: 14.sp)
                                      .textPoppinsMedium,
                                  title: 'Card Number'),
                              Spacer(),
                              Image.asset(
                                AppImages.visa,
                                height: 14.h,
                              ),
                              CustomSizedBoxWidth(width: 10.w),
                              Image.asset(
                                AppImages.visalogo,
                                height: 14.h,
                              ),
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
                                  color: Color(0xFF444444),
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Amount'),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
                              toop: 0,
                              botm: 0,
                              hintText: 'Enter the number to be drawns'),
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 50.h),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title: ''
                            'Withdraw',
                        ontap: () {
                          Navigator.pop(context);
                          verificationOtp(context);
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

  void verificationOtp(BuildContext context) {
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF847C3D),
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Vertification'),
                          InkWell(
                              onTap: () {

                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                size: 18,
                                color: Color(0xFF847C3D),
                              ))
                        ],
                      ),
                    ),
                    Divider(),
                    CustomSizedBoxHeight(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: CustomText(
                          textStyle: AppStyle(
                              color: Color(0xFF847C3D),
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                              .textPoppinsMedium,
                          title: 'OTP Verification'),
                    ),
                    CustomSizedBoxHeight(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: CustomText(
                          textStyle: AppStyle(
                              color: Color(0xFF444444),
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                              .textPoppinsMedium,
                          title:
                          'The OTP code will be sent to the phone number +1 555-123-4567'),
                    ),
                    CustomSizedBoxHeight(height: 5.h),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 30,
                        ),
                        child: Pinput(
                          length: 5,
                          obscureText: true,
                          obscuringCharacter: '*',
                          controller: pinController,
                          focusNode: focusNode,
                          closeKeyboardWhenCompleted: true,

                          androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsUserConsentApi,
                          listenForMultipleSmsOnAndroid: true,

                          separatorBuilder: (index) => const SizedBox(width: 8),
                          validator: (value) {
                            return value == '22222'
                                ? null
                                : '3/3 The OTP code you entered is invalid. Please enter the correct OTP code.';
                          },
                          // onClipboardFound: (value) {
                          //   debugPrint('onClipboardFound: $value');
                          //   pinController.setText(value);
                          // },
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          onCompleted: (pin) {
                            debugPrint('onCompleted: $pin');
                          },
                          onChanged: (value) {
                            debugPrint('onChanged: $value');
                          },
                          cursor: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 9),
                                width: 22,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF878D96),
                                fontWeight: FontWeight.w700,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Don\' received code?'),
                        InkWell(
                          onTap: () {},
                          child: CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF847C3D),
                                  fontWeight: FontWeight.w700,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Resend'),
                        ),
                      ],
                    ),
                    CustomSizedBoxHeight(height: 50.h),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title: ''
                            'Confirm',
                        ontap: () async{
                         await  Get.to(RealTimeTrackingCompleteOrder());
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
                    ),
                  ],
                ),
              );
            },
          );
        });
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
                          await Get.to(() => CanceledByPicckR());
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
