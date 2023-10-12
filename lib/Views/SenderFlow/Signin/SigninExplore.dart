import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/FindDesignation/SetRoute.dart';
import 'package:picckr_app/Views/SenderFlow/SetDesignation/RecipientsDetail.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:pinput/pinput.dart';
import 'package:get/get.dart';

class SignInExplore extends StatefulWidget {
  SignInExplore({super.key});

  @override
  State<SignInExplore> createState() => _SignInExploreState();
}

class _SignInExploreState extends State<SignInExplore> {
  final formKey = GlobalKey<FormState>();

  final pinController = TextEditingController();

  final focusNode = FocusNode();

  @override
  void initState() {
    // Future.delayed(Duration(seconds: 10),(){
    //   allowNotification(context);
    //   Future.delayed(Duration(seconds: 10),(){
    //     allowTracking(context);
    //   });
    // });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF847C3D),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xFF847C3D),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            AppImages.profile1,
                            fit: BoxFit.fill,
                          ),
                          radius: 30.r,
                        ),
                        CustomSizedBoxWidth(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                textStyle: AppStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        size: 18)
                                    .textPoppinsMedium,
                                title: 'Good Morning, Jermey Jason'),
                            CustomText(
                                textStyle: AppStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        size: 14)
                                    .textPoppinsMedium,
                                title: 'Let\'s send the package now!')
                          ],
                        )
                      ],
                    ),
                    CustomSizedBoxHeight(height: 10.h),
                    Container(
                      width: 343.w,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Row(
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
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w600,
                                          size: 12.sp)
                                      .textPoppinsMedium,
                                  title: '\$534'),
                            ],
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              topUp(context);
                              // topUpsheet(context);
                            },
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
                    ),
                    CustomSizedBoxHeight(height: 20.h),
                  ],
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(SetRouteG());
                          },
                          child: Container(
                            height: 36,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color:Theme.of(context).scaffoldBackgroundColor,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Theme.of(context).primaryColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                CustomSizedBoxWidth(width: 10.w),
                                Text(
                                  'Find a destination',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        Text(
                          'Recent designations',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: InkWell(
                            onTap: () {
                              Get.to(Get.to(ReciptientDetailScreen()));
                            },
                            child: Container(
                              height: 210.h,
                              child: ListView.builder(
                                itemCount: 10,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.h),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.red,
                                        ),
                                        CustomSizedBoxWidth(width: 10.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Harvard University',
                                              style: TextStyle(
                                                color: Color(0xFF444444),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                height: 1.50,
                                              ),
                                            ),
                                            Text(
                                              'Massachusetts Hall, Cambridge, MA 02138',
                                              style: TextStyle(
                                                color: Color(0xFF878D96),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 1.50,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        CustomText(
                            textStyle: AppStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Choose Vehicle'),
                        CustomSizedBoxHeight(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(SetRouteG());
                              },
                              child: Column(
                                children: [
                                  Container(
                                      width: 72,
                                      height: 72,
                                      padding: const EdgeInsets.all(16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF0E796),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Image.asset(AppImages.scooter)),
                                  CustomSizedBoxHeight(height: 5),
                                  Text(
                                    'Bike',
                                    style: TextStyle(
                                      color: Color(0xFF444444),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(SetRouteG());
                              },
                              child: Column(
                                children: [
                                  Container(
                                      width: 72,
                                      height: 72,
                                      padding: const EdgeInsets.all(16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF0E796),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Image.asset(AppImages.car)),
                                  CustomSizedBoxHeight(height: 5),
                                  Text(
                                    'car',
                                    style: TextStyle(
                                      color: Color(0xFF444444),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(SetRouteG());
                              },
                              child: Column(
                                children: [
                                  Container(
                                      width: 72,
                                      height: 72,
                                      padding: const EdgeInsets.all(16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF0E796),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Image.asset(AppImages.van)),
                                  CustomSizedBoxHeight(height: 5),
                                  Text(
                                    'van',
                                    style: TextStyle(
                                      color: Color(0xFF444444),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(SetRouteG());
                              },
                              child: Column(
                                children: [
                                  Container(
                                      width: 72,
                                      height: 72,
                                      padding: const EdgeInsets.all(16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF0E796),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Image.asset(AppImages.truck)),
                                  CustomSizedBoxHeight(height: 5),
                                  Text(
                                    'Truck',
                                    style: TextStyle(
                                      color: Color(0xFF444444),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        CustomText(
                            textStyle: AppStyle(
                                    color:Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Why PicckR?'),
                        CustomSizedBoxHeight(height: 10.h),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              width: 343.w,
                              height: 78.h,
                              padding: const EdgeInsets.all(16),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImages.truck,
                                    fit: BoxFit.fill,
                                  ),
                                  CustomSizedBoxWidth(width: 10.w),
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Delivering your package quickly',
                                            style: TextStyle(
                                              color: Color(0xFF847C3D),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomText(
                                                textStyle: AppStyle(
                                                        color:
                                                            Color(0xFF878D96),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        size: 12)
                                                    .textPoppinsMedium,
                                                title:
                                                    'We also have many PicckRs, so your packages will be sent and arrive on time.'),
                                          ),
                                        ]),
                                  ),
                                ],
                              )),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              width: 343.w,
                              height: 78.h,
                              padding: const EdgeInsets.all(16),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImages.clock,
                                    fit: BoxFit.fill,
                                  ),
                                  CustomSizedBoxWidth(width: 10.w),
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Saving your time',
                                            style: TextStyle(
                                              color: Color(0xFF847C3D),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomText(
                                                textStyle: AppStyle(
                                                        color:
                                                            Color(0xFF878D96),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        size: 12)
                                                    .textPoppinsMedium,
                                                title:
                                                    'Makes it easier for you to send items to various destinations and saves your time.'),
                                          ),
                                        ]),
                                  ),
                                ],
                              )),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              width: 343.w,
                              height: 78.h,
                              padding: const EdgeInsets.all(16),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImages.money,
                                    fit: BoxFit.fill,
                                  ),
                                  CustomSizedBoxWidth(width: 10.w),
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Saving your money',
                                            style: TextStyle(
                                              color: Color(0xFF847C3D),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomText(
                                                textStyle: AppStyle(
                                                        color:
                                                            Color(0xFF878D96),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        size: 12)
                                                    .textPoppinsMedium,
                                                title:
                                                    'PicckR saves time, energy, and costs with affordable prices.'),
                                          ),
                                        ]),
                                  ),
                                ],
                              )),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                      ]))
            ],
          ),
        ),
      ),
    );
  }

  void withdraw(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                                      color: Theme.of(context).primaryColor,
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
                                  color: Theme.of(context).primaryColor,
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
                        ontap: () {
                          Navigator.pop(context);
                          Get.snackbar(
                              '', 'You have successfully withdraw your money',
                              snackPosition: SnackPosition.BOTTOM,
                              colorText: Colors.green,
                              borderRadius: 1,
                              icon: Icon(Icons.check_box, color: Colors.green),
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

  void allowNotification(BuildContext context) {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 20.h),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Skip',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF847C3D),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                          ),
                        )
                      ],
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
                              Image.asset(
                                AppImages.alarm,
                                height: 50.h,
                                width: 50.w,
                              ),
                              CustomSizedBoxHeight(height: 10.h),
                              Text(
                                'Allow push notifications',
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
                                  'By turning on push notifications, you will receive notifications directly on your device about things like app updates or other important information.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF878D96),
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
                            'Allow Notification',
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

  int selectedvalue = 0;

  void allowTracking(BuildContext context) {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 20.h),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Skip',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF847C3D),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                          ),
                        )
                      ],
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
                              Image.asset(
                                AppImages.map1,
                                height: 50.h,
                                width: 50.w,
                              ),
                              CustomSizedBoxHeight(height: 10.h),
                              Text(
                                'Allow tracking of app',
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
                                  'By turning on app tracking, this application will track your location to provide enhanced features.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF878D96),
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
                            'Allow tracking',
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

  int selectedcard = -1;

  void selectedCard(int index) {
    selectedcard = index;
    setState(() {});
  }

  void addCardBottomSheet(BuildContext context) {
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
                    Divider(),
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
                              InkWell(
                                onTap: () {
                                  selectedCard(1);
                                  setState(() {});
                                },
                                child: Container(
                                  width: 88,
                                  height: 36,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: selectedcard == 1
                                        ? Color(0xFF847C3D)
                                        : Colors.white,
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
                                      title: 'Debit Card'),
                                ),
                              ),
                              CustomSizedBoxWidth(width: 20.w),
                              InkWell(
                                onTap: () {
                                  selectedCard(2);
                                  setState(() {});
                                },
                                child: Container(
                                  width: 88,
                                  height: 36,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: selectedcard == 2
                                        ? Color(0xFF847C3D)
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF444444)),
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
                                  ),
                                ),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.50, color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: 'mm'),
                                ),
                              ),
                              CustomSizedBoxWidth(width: 10),
                              Text(
                                '/',
                                style: TextStyle(fontSize: 15),
                              ),
                              CustomSizedBoxWidth(width: 10),
                              Container(
                                width: 75,
                                height: 44,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.50, color: Color(0xFFDDE1E6)),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: 'dd'),
                                ),
                              ),
                            ],
                          ),
                          CustomSizedBoxHeight(height: 10),
                          CustomText(
                              textStyle: AppStyle(
                                      color: Color(0xFF444444),
                                      fontWeight: FontWeight.w500,
                                      size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'CVV'),
                          CustomSizedBoxHeight(height: 10),
                          Container(
                            width: 75,
                            height: 44,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFDDE1E6)),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: '123'),
                            ),
                          ),
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
        });
  }

  void topUp(BuildContext context) {
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
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF847C3D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.cancel,
                              color: Color(0xFF847C3D),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  textStyle: AppStyle(
                                          color: Colors.black,
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
                          GestureDetector(onTap: (){topUpsheet(context);},
                            child: Row(
                              children: [
                                Image.asset(
                                  AppImages.visalogo2,
                                  height: 20.h,
                                ),
                                CustomSizedBoxWidth(width: 10.w),
                                Column(
                                  children: [
                                    Text(
                                      'American Express',
                                      style: TextStyle(
                                        color: Color(0xFF444444),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                    Text(
                                      'Credit card (*1234)',
                                      style: TextStyle(
                                        color: Color(0xFF847C3D),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Radio(
                                  value: 1,
                                  activeColor: Color(0xFF847C3D),
                                  groupValue: selectedvalue,
                                  onChanged: (int? value) async {
                                     topUpsheet(context);
                                    Navigator.pop(context);
                                    setState(() {
                                      selectedvalue = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          CustomSizedBoxHeight(height: 10.h),
                          GestureDetector(onTap: (){topUpsheet(context);},
                            child: Row(
                              children: [
                                Image.asset(
                                  AppImages.visalogo2,
                                  height: 20.h,
                                ),
                                CustomSizedBoxWidth(width: 10.w),
                                Column(
                                  children: [
                                    Text(
                                      'American Express',
                                      style: TextStyle(
                                        color: Color(0xFF444444),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                    Text(
                                      'Credit card (*1234)',
                                      style: TextStyle(
                                        color: Color(0xFF847C3D),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Radio(
                                  value: 2,
                                  activeColor: Color(0xFF847C3D),
                                  groupValue: selectedvalue,
                                  onChanged: (int? value)  {
                                  topUpsheet(context);
                                    Navigator.pop(context);
                                    setState(() {
                                      selectedvalue = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
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

  void topUpsheet(BuildContext context)  {
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
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF847C3D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.cancel,
                              color: Color(0xFF847C3D),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 250.h,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 4,mainAxisSpacing: 4,
                              crossAxisCount: 3),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 103.67,
                              height: 103.67,
                              padding: const EdgeInsets.all(16),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50, color: Color(0xFFDDE1E6)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$10',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF878D96),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    CustomSizedBoxHeight(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter amount',
                            style: TextStyle(
                              color: Color(0xFF444444),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                          CustomSizedBoxHeight(height: 5),
                          Container(
                            width: 343,
                            height: 44,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Color(0xFFDDE1E6)),
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
                                      '\$0',
                                      style: TextStyle(
                                        color: Color(0xFF878D96),
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
                          CustomSizedBoxHeight(height: 5),
                          CustomText(
                              textStyle: AppStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Payment details'),
                          CustomSizedBoxHeight(height: 10.h),
                          Image.asset(
                            AppImages.visalogo2,
                            height: 20.h,
                          ),
                          CustomSizedBoxWidth(width: 10.w),
                          Column(
                            children: [
                              Text(
                                'American Express',
                                style: TextStyle(
                                  color: Color(0xFF444444),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                              Text(
                                'Credit card (*1234)',
                                style: TextStyle(
                                  color: Color(0xFF847C3D),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                              )
                            ],
                          ),
                          CustomSizedBoxHeight(height: 10.h),
                          CustomText(
                              textStyle: AppStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Total'),
                          CustomSizedBoxHeight(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Payment',
                                style: TextStyle(
                                  color: Color(0xFF878D96),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                              Text(
                                '\$0',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF847C3D),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(title: 'Top up',
              AppStyle: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1.50,
              ),color: Color(0xFF847C3D),ontap: (){
                        verificationOtp(context);

                        }),
                    )
                  ],
                ),
              );
            },
          );
        });
  }
}
