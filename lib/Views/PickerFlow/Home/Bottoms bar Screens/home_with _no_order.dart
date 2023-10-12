import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Views/PickerFlow/Summary/activitySummary.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class HomeWithNoOrder extends StatefulWidget {
  HomeWithNoOrder({super.key});

  @override
  State<HomeWithNoOrder> createState() => _HomeWithNoOrderState();
}

class _HomeWithNoOrderState extends State<HomeWithNoOrder> {
  bool requstAvailable = false;

  bool profileComplete = false;

  bool history = false;
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  TextEditingController nameController = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController amount = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isFormValid = false;
  void _updateFormState() {
    // Step 3
    setState(() {
      isFormValid = _formKey.currentState?.validate() ?? false; // Step 5
    });
  }

  bool requestaccept = true;

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
                            AppImages.profile2,
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
                                        color: AppColor.white,
                                        fontWeight: FontWeight.w600,
                                        size: 18)
                                    .textPoppinsMedium,
                                title: 'Good Morning, Jermey Jason'),
                            CustomText(
                                textStyle: AppStyle(
                                        color: AppColor.white,
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
                              withdraw(context);
                            },
                            child: CustomText(
                                textStyle: AppStyle(
                                        color: Color(0xFF847C3D),
                                        fontWeight: FontWeight.w600,
                                        size: 12.sp)
                                    .textPoppinsMedium,
                                title: 'Withdraw'),
                          )
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 20.h),
                  ],
                ),
              ),
              CustomSizedBoxHeight(height: 20.h),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            textStyle: AppStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Set route'),
                        CustomSizedBoxHeight(height: 10.h),
                        InkWell(
                          onTap: () {
                            Get.to(SetRoute());
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Color(0xFF878D96)),
                            ),
                            child: Row(
                              children: <Widget>[
                                const Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.radio_button_checked,
                                      color: Colors.blue,
                                    ),
                                    Dash(
                                        direction: Axis.vertical,
                                        length: 20,
                                        dashLength: 5,
                                        dashColor: Color(0xFF878D96)),
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    children: <Widget>[
                                      CustomText(
                                          textStyle: AppStyle(
                                                  color: Theme.of(context).primaryColor,
                                                  fontWeight: FontWeight.w400,
                                                  size: 14.sp)
                                              .textPoppinsMedium,
                                          title: 'Lesley University'),
                                      Divider(
                                        color: Color(0xFF878D96),
                                      ),
                                      CustomText(
                                          textStyle: AppStyle(
                                                  color: Theme.of(context).primaryColor,
                                                  fontWeight: FontWeight.w400,
                                                  size: 14.sp)
                                              .textPoppinsMedium,
                                          title: 'Harvard University')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        CustomText(
                            textStyle: AppStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Trips request'),
                        CustomSizedBoxHeight(height: 10.h),
                        requstAvailable
                            ? Center(
                                child: Text(
                                  'You don’t have any trip request.\nPlease set your route',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF878D96),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Color(0xFF878D96)),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          child: Image.asset(
                                            AppImages.image2,
                                            fit: BoxFit.fill,
                                          ),
                                          radius: 20.r,
                                        ),
                                        CustomSizedBoxWidth(width: 10.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                                textStyle: AppStyle(
                                                        color:
                                                            Color(0xFF847C3D),
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.50,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Harvard University',
                                                    style: TextStyle(
                                                      color: Color(0xFF847C3D),
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                            color: Color(
                                                                0xFF878D96),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            size: 12)
                                                        .textPoppinsMedium,
                                                    title: '4.9'),
                                              ],
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              textStyle: AppStyle(
                                                      color: Color(0xFF847C3D),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      size: 12)
                                                  .textPoppinsMedium,
                                              title: '\$110',
                                            ),
                                            CustomText(
                                                textStyle: AppStyle(
                                                        color:
                                                            Color(0xFF878D96),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        size: 12)
                                                    .textPoppinsMedium,
                                                title: '1.5 km'),
                                            CustomText(
                                              textStyle: AppStyle(
                                                      color: Color(0xFF847C3D),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      size: 12)
                                                  .textPoppinsMedium,
                                              title: '00:15',
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Visibility(
                                      visible: requestaccept,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CustomButton(
                                              title: 'Decline',
                                              ontap: () {},
                                              height: 36.h,
                                              width: 120.w,
                                              color: Theme.of(context).scaffoldBackgroundColor,
                                              borderColor: Colors.red,
                                              AppStyle: AppStyle(
                                                      color: Colors.red,
                                                      size: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w500)
                                                  .textPoppinsMedium),
                                          CustomButton(
                                              title: 'Accept',
                                              color: Color(0xFF847C3D),
                                              ontap: () {
                                                setState(() {});
                                                requestaccept = false;
                                              },
                                              height: 36.h,
                                              width: 120.w,
                                              AppStyle: AppStyle(
                                                      color: Colors.white,
                                                      size: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w500)
                                                  .textPoppinsMedium),
                                        ],
                                      ),
                                    ),
                                    // Visibility(visible: requestaccept?false:true,
                                    //     child: Container(
                                    //       width: 311,
                                    //       height: 34,
                                    //
                                    //       clipBehavior: Clip.antiAlias,
                                    //       decoration: ShapeDecoration(
                                    //         color: Color(0xFFF2F4F8),
                                    //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    //
                                    //       ),
                                    //       child: TextFormField(decoration: InputDecoration(border: InputBorder.none,hintText: 'Send message to John Corbuzier'),),
                                    //     ))
                                    Visibility(
                                        visible: requestaccept ? false : true,
                                        child: Container(
                                            width: 311,
                                            height: 34,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFF2F4F8),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                            child: AppTextFormField(
                                              controller:
                                                  TextEditingController(),
                                              hintText:
                                                  'Send message to John Corbuzier',
                                              botm: 5,
                                              toop: 0,
                                            )))
                                  ],
                                ),
                              ),
                        CustomSizedBoxHeight(height: 10.h),
                        Image.asset(AppImages.messageCompleteprofile),
                        CustomSizedBoxHeight(height: 10.h),
                        CustomText(
                            textStyle: AppStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600,
                                    size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Destination history'),
                        CustomSizedBoxHeight(height: 10.h),
                        history
                            ? Center(
                                child: Text(
                                  'Today you haven\'t sent the package yet,\nyou will be sending the package shortly.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF878D96),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                ),
                              )
                            : ListView.builder(
                                itemCount: 10,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Get.to(OrderHistory());
                                    },
                                    child: Container(
                                        width: 343,
                                        height: 72,
                                        margin: EdgeInsets.all(10),
                                        padding: const EdgeInsets.all(16),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 0.50,
                                                color: Color(0xFFDDE1E6)),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFFF0E796),
                                              child: Image.asset(
                                                AppImages.scooter,
                                                fit: BoxFit.fill,
                                              ),
                                              radius: 20.r,
                                            ),
                                            CustomSizedBoxWidth(width: 10.w),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Sent to ',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF878D96),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.50,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              'Lesley University',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF847C3D),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.50,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  CustomText(
                                                      textStyle: AppStyle(
                                                              color: Color(
                                                                  0xFF878D96),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              size: 12)
                                                          .textPoppinsMedium,
                                                      title:
                                                          'Today at 13:30 PM'),
                                                ]),
                                            Spacer(),
                                            CustomText(
                                              textStyle: AppStyle(
                                                      color: Color(0xFF878D96),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      size: 12)
                                                  .textPoppinsMedium,
                                              title: '\$100',
                                            )
                                          ],
                                        )),
                                  );
                                })
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
        builder: (context) {
          return StatefulBuilder(
            // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return Padding(
                padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
                  child: Form(key: _formKey,
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
                                  controller: nameController,
                                  keyboard: TextInputType.name,
                                  onChanged: (value) => _updateFormState(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Your Full Name';
                                    } else if (!RegExp(r'^[a-zA-Z ]*$').hasMatch(value)) {
                                      return 'Please enter only alphabets';
                                    }
                                    return null;
                                  },
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
                                  CustomSizedBoxWidth(width: 10.w)
                                ],
                              ),
                              CustomSizedBoxHeight(height: 10),
                              AppTextFormField(
                                  controller: cardNumber,
                                  keyboard: TextInputType.number,
                                  onChanged: (value) => _updateFormState(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Card number';
                                    }
                                    return null;
                                  },
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
                                  controller: amount,
                                  keyboard: TextInputType.name,
                                  onChanged: (value) => _updateFormState(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Amount';
                                    }
                                    return null;
                                  },
                                  hintText: 'Enter the number to be drawns'),
                            ],
                          ),
                        ),
                        CustomSizedBoxHeight(height: 20.h),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          child: CustomButton(
                            title: ''
                                'Withdraw',
                ontap: isFormValid
                ? () {
                if (_formKey.currentState!.validate()) {
                              Navigator.pop(context);
                              verificationOtp(context);
                            }}:(){},
                            color:isFormValid?Color(0xFF847C3D):Color(0xFF444444),
                            AppStyle: AppStyle(
                                color:isFormValid? Colors.white:Color(0xFF878D96),

                                fontWeight: FontWeight.w500,
                                    size: 12.sp)
                                .textPoppinsMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
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
}
