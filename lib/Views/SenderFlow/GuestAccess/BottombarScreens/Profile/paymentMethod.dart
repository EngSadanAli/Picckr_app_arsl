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

import 'package:pinput/pinput.dart';
class SenderPaymentMethodScreen  extends StatefulWidget {

   SenderPaymentMethodScreen({super.key});

  @override
  State<SenderPaymentMethodScreen> createState() => _SenderPaymentMethodScreenState();
}

class _SenderPaymentMethodScreenState extends State<SenderPaymentMethodScreen> {
  final formKey = GlobalKey<FormState>();

  final pinController = TextEditingController();

  final focusNode = FocusNode();

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
              title: 'Payment Method'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: InkWell(onTap: (){Get.back();},
              child: Icon(Icons.arrow_back_ios,color: Theme.of(context).primaryColor,)),
          bottom: PreferredSize(
            child: Divider(
              color: Theme.of(context).primaryColor.withOpacity(.5),
              // Choose the color you want
              height: 1,
            ),
            preferredSize: Size.fromHeight(1), // Choose the height you want
          ),
        ),

        body:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CustomSizedBoxHeight(height: 10),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                            size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Wallet'),
                    CustomSizedBoxHeight(height: 10.h),
                    Row(
                      children: [
                        Icon(
                          Icons.wallet_outlined,
                          color: Color(0xFF847C3D),
                        ),
                        CustomSizedBoxWidth(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 12.sp)
                                    .textPoppinsMedium,
                                title: 'PicckRPay'),
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF847C3D),
                                    fontWeight: FontWeight.w600,
                                    size: 12.sp)
                                    .textPoppinsMedium,
                                title: '\$534'),
                          ],
                        ),
                        Spacer(),
                        InkWell(
                          child: CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF847C3D),
                                  fontWeight: FontWeight.w600,
                                  size: 12.sp)
                                  .textPoppinsMedium,
                              title: 'Top up'),

                        )
                      ],
                    ),
                    Divider(
                      color: Theme.of(context).primaryColor.withOpacity(.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Save Card'),
                        InkWell(
                          onTap: () {
                            addCardBottomSheet(context);
                          },
                          child: CustomText(
                              textStyle: AppStyle(
                                  color: Color(0xFF847C3D),
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Add Card'),
                        ),
                      ],
                    ),
                    CustomSizedBoxHeight(height: 10.h),
                    Row(children: [
                      Image.asset(AppImages.visalogo2,height: 20.h,),
                      CustomSizedBoxWidth(width: 10.w),
                      Column(children: [
                        Text(
                          'American Express',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                        Text(
                          'Credit card (*1234)',
                          style: TextStyle(
                            color: Color(0xFF878D96),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        )
                      ],),
                      Spacer(),
                      GestureDetector(onTap: (){
                        ConfirmDelete(context);
                      },
                          child: Icon(Icons.delete,color: Color(0xFF847C3D)))
                    ],),
                    CustomSizedBoxHeight(height: 10.h),
                    Row(children: [
                      Image.asset(AppImages.visalogo2,height: 20.h,),
                      CustomSizedBoxWidth(width: 10.w),
                      Column(children: [
                        Text(
                          'American Express',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                        Text(
                          'Credit card (*1234)',
                          style: TextStyle(
                            color: Color(0xFF878D96),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        )
                      ],),
                      Spacer(),
                      GestureDetector(onTap: (){},
                          child: Icon(Icons.delete,color: Color(0xFF847C3D),))
                    ],),
                  ],
                ),
              ),


              CustomSizedBoxHeight(height: 50.h),
            ],
          ),
        )

    );
  }
  void ConfirmDelete(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                          child: Text(
                            'Confirmation',
                            style: TextStyle(
                              color: Color(0xFF847C3D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                          child: GestureDetector(onTap: (){Navigator.pop(context);},
                            child: Icon(Icons.cancel,color: Color(0xFF847C3D),),
                          ),
                        )
                      ],),
                    Divider(color:  Theme.of(context).primaryColor.withOpacity(.5),),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Stack(alignment: Alignment.bottomRight,
                                children: [
                                  CircleAvatar(radius: 40.r,backgroundColor: Color(0xFFF0E796),child: Icon(Icons.delete_outline,color: Color(0xFF847C3D),size: 40,),),
                                  CircleAvatar(radius: 15.r,backgroundColor: Color(0xFFFFDDDD),child: Icon(Icons.warning_amber,color: Colors.red,),)

                                ],
                              ),
                                CustomSizedBoxHeight(height: 10.h),
                              Text(
                                'Are you sure you want to delete this card?',
                                style: TextStyle(
                                  color: Color(0xFF847C3D),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              )


                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(color:  Theme.of(context).primaryColor.withOpacity(.5),),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title:
                            'Delete Card',
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
                    Divider(color:  Theme.of(context).primaryColor.withOpacity(.5),),
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
                    Divider(color: Theme.of(context).primaryColor.withOpacity(.5)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title: ''
                            'Withdraw',
                        ontap: () {
                          Navigator.pop(context);
                          verificationOtp(context);
                          // allowNotification(context);
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
                    Divider(color:  Theme.of(context).primaryColor.withOpacity(.5),),
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
                    Divider(color:  Theme.of(context).primaryColor.withOpacity(.5),),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title: ''
                            'Confirm',
                        ontap: () {
                          Navigator.pop(context);
                          Get.snackbar('',
                              'You have successfully withdraw your money',
                              snackPosition: SnackPosition.BOTTOM,
                              colorText: Colors.green,
                              borderRadius:1,
                              icon: Icon(Icons.check_box,color: Colors.green),

                              backgroundColor: Color(0xFFDFF9DF));
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

   int selectedcard = -1;

   void selectedCard(int index) {
     selectedcard = index;
     setState(() {

     });
   }

   void addCardBottomSheet(BuildContext context) {
     showModalBottomSheet(
         context: context,
         builder: (context) {
           return StatefulBuilder( // Wrap the builder with StatefulBuilder
             builder: (BuildContext context, StateSetter setState) {
               return SingleChildScrollView(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding:
                       const EdgeInsets.symmetric(
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
                               title: 'Add Card'),
                           InkWell(
                               onTap: () {
                                 Navigator.pop(context);
                               },
                               child: Icon(
                                 Icons.close,
                                 size: 20,
                                 color: Color(0xFF847C3D),
                               ))
                         ],
                       ),
                     ),
                     Divider( color:Theme.of(context).primaryColor.withOpacity(.5)),
                     CustomSizedBoxHeight(height: 10),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           CustomText(
                               textStyle: AppStyle(
                                   color: Theme.of(context).primaryColor,
                                   fontWeight: FontWeight.w500,
                                   size: 14.sp)
                                   .textPoppinsMedium,
                               title: 'Card Type'),
                           CustomSizedBoxHeight(height: 10),
                           Row(
                             children: [
                               InkWell(onTap: () {
                                 selectedCard(1);
                                 setState(() {

                                 });
                               },
                                 child: Container(
                                   width: 88,
                                   height: 36,
                                   padding: const EdgeInsets.symmetric(
                                       horizontal: 12, vertical: 8),
                                   clipBehavior: Clip.antiAlias,
                                   decoration: ShapeDecoration(
                                     color: selectedcard == 1 ? Color(
                                         0xFF847C3D) : Theme.of(context).scaffoldBackgroundColor,
                                     shape: RoundedRectangleBorder(
                                       side: BorderSide(
                                           width: 0.50,
                                           color: Color(0xFF444444)),
                                       borderRadius: BorderRadius.circular(6),
                                     ),
                                   ),
                                   child: CustomText(
                                       textStyle: AppStyle(
                                           color: Theme.of(context).primaryColor,
                                           fontWeight: FontWeight.w500,
                                           size: 12.sp)
                                           .textPoppinsMedium,
                                       title: 'Debit Card'),),
                               ),
                               CustomSizedBoxWidth(width: 20.w),
                               InkWell(onTap: () {
                                 selectedCard(2);
                                 setState(() {

                                 });
                               },
                                 child: Container(
                                   width: 88,
                                   height: 36,
                                   padding: const EdgeInsets.symmetric(
                                       horizontal: 12, vertical: 8),
                                   clipBehavior: Clip.antiAlias,
                                   decoration: ShapeDecoration(
                                     color: selectedcard == 2 ? Color(
                                         0xFF847C3D) : Theme.of(context).scaffoldBackgroundColor,
                                     shape: RoundedRectangleBorder(
                                       side: BorderSide(
                                           width: 0.50,
                                           color: Theme.of(context).primaryColor),
                                       borderRadius: BorderRadius.circular(6),
                                     ),
                                   ),
                                   child: Center(
                                     child: CustomText(
                                         textStyle: AppStyle(
                                             color: Theme.of(context).primaryColor,
                                             fontWeight: FontWeight.w500,
                                             size: 12.sp)
                                             .textPoppinsMedium,
                                         title: 'Credit Card'),
                                   ),),
                               ),

                             ],
                           ),
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
                                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                 clipBehavior: Clip.antiAlias,
                                 decoration: ShapeDecoration(
               color: Theme.of(context).scaffoldBackgroundColor,
                                   shape: RoundedRectangleBorder(
                                     side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                                     borderRadius: BorderRadius.circular(6),
                                   ),
                                 ),
                                 child: Center(
                                   child: TextFormField(
                                     decoration: InputDecoration(hintStyle: TextStyle(color: Color(0xFF878D96)),border: InputBorder.none,hintText: 'mm')
                                   ),
                                 ),),
                               CustomSizedBoxWidth(width: 10),
                               Text('/',style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor),),
                               CustomSizedBoxWidth(width: 10),
                               Container(
                                 width: 75,
                                 height: 44,
                                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                 clipBehavior: Clip.antiAlias,
                                 decoration: ShapeDecoration(
                                   shape: RoundedRectangleBorder(
                                     side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                                     borderRadius: BorderRadius.circular(6),
                                   ),
                                 ),
                                 child: Center(
                                   child: TextFormField(
                                     decoration: InputDecoration(border: InputBorder.none,hintText: 'dd',hintStyle: TextStyle(color: Color(0xFF878D96))),
                                   ),
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
                             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                             clipBehavior: Clip.antiAlias,
                             decoration: ShapeDecoration(
                               shape: RoundedRectangleBorder(
                                 side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                                 borderRadius: BorderRadius.circular(6),
                               ),
                             ),
                             child: Center(
                               child: TextFormField(
                                 decoration: InputDecoration(border: InputBorder.none,hintText: '123',hintStyle: TextStyle(color: Color(0xFF878D96))),
                               ),
                             ),),
                         ],
                       ),
                     ),
                     CustomSizedBoxHeight(height: 50.h),
                     Divider(color: Theme.of(context).primaryColor.withOpacity(.5),),
                     Padding(
                       padding: EdgeInsets.symmetric(
                           horizontal: 20.w, vertical: 10.h),
                       child: CustomButton(
                         title: ''
                             'Add card',
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
         });}
}
