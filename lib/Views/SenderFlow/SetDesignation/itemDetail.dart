import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/DisputeScreen.dart';
import 'package:picckr_app/Views/SenderFlow/RealTimeTracking/findPicckr.dart';
import 'package:picckr_app/Views/sign_up_Screen/verificationOTP.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:pinput/pinput.dart';
import 'package:get/get.dart';
import 'package:flutter_dash/flutter_dash.dart';

class ItemDetail extends StatefulWidget {
  ItemDetail({super.key});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  int? selectedValue;
  String selectedOption = '';
  final formKey = GlobalKey<FormState>();

  final pinController = TextEditingController();
  final packageType = TextEditingController();
  final weightC = TextEditingController();

  final focusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void handleRadioChange(String value) {
    setState(() {
      selectedOption = value ?? '';
    });
  }

  int selectedContainerIndex = -1;
  bool isFormValid = false; //
  void selectContainer(int index) {
    selectedContainerIndex = index;
    setState(() {});
  }

  void _updateFormState() {
    // Step 3
    setState(() {
      isFormValid = _formKey.currentState?.validate() ?? false; // Step 5
    });
  }

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
            title: 'Item Detail'),
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
            child: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Item details',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Color(0xFFCB3A31),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Choose Vehicle',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Theme.of(context)
                        .primaryColor, // This will affect the border color of the checkbox when it's disabled
                  ),
                  child: RadioListTile(
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0xFFF0E796),
                          child: Image.asset(AppImages.scooter),
                        ),
                        CustomSizedBoxWidth(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bike',
                              style: TextStyle(
                                color: Color(0xFF847C3D),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                            Text(
                              'For small items, max 10kg',
                              style: TextStyle(
                                color: Color(0xFF878D96),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\$50',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    value: 'Option 1',
                    groupValue: selectedOption,
                    activeColor: Color(0xFF847C3D),
                    onChanged: (String? value) => handleRadioChange(value!),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Theme.of(context)
                        .primaryColor, // This will affect the border color of the checkbox when it's disabled
                  ),
                  child: RadioListTile(
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0xFFF0E796),
                          child: Image.asset(AppImages.car),
                        ),
                        CustomSizedBoxWidth(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ''
                              'Car',
                              style: TextStyle(
                                color: Color(0xFF847C3D),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                            Text(
                              'For big items, max. 100kg',
                              style: TextStyle(
                                color: Color(0xFF878D96),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\$150',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    value: 'Option 2',
                    groupValue: selectedOption,
                    activeColor: Color(0xFF847C3D),
                    onChanged: (String? value) => handleRadioChange(value!),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Theme.of(context)
                        .primaryColor, // This will affect the border color of the checkbox when it's disabled
                  ),
                  child: RadioListTile(
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0xFFF0E796),
                          child: Image.asset(AppImages.van),
                        ),
                        CustomSizedBoxWidth(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Van',
                              style: TextStyle(
                                color: Color(0xFF847C3D),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                            Text(
                              'For small items, max 150kg',
                              style: TextStyle(
                                color: Color(0xFF878D96),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\$50',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    value: 'Option 3',
                    groupValue: selectedOption,
                    activeColor: Color(0xFF847C3D),
                    onChanged: (String? value) => handleRadioChange(value!),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Theme.of(context)
                        .primaryColor, // This will affect the border color of the checkbox when it's disabled
                  ),
                  child: RadioListTile(
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0xFFF0E796),
                          child: Image.asset(AppImages.truck),
                        ),
                        CustomSizedBoxWidth(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Truck',
                              style: TextStyle(
                                color: Color(0xFF847C3D),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                            Text(
                              'For small items, max 200kg',
                              style: TextStyle(
                                color: Color(0xFF878D96),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\$200',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    value: 'Option 4',
                    groupValue: selectedOption,
                    activeColor: Color(0xFF847C3D),
                    onChanged: (String? value) => handleRadioChange(value!),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSizedBoxHeight(height: 10),
                    CustomText(
                        textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Package type'),
                    CustomSizedBoxHeight(height: 10),
                    Wrap(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {});
                            selectContainer(1);
                          },
                          child: Container(
                              width: 110,
                              height: 36,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: selectedContainerIndex == 1
                                    ? Color(0xFFF0E796)
                                    : Theme.of(context).scaffoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50,
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.fastfood_outlined),
                                  Text(
                                    'Groceries',
                                    style: TextStyle(
                                      color: Color(0xFF878D96),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                    ),
                                  )
                                ],
                              )),
                        ),
                        CustomSizedBoxWidth(width: 5.w),
                        InkWell(
                          onTap: () {
                            setState(() {});
                            selectContainer(2);
                          },
                          child: Container(
                              width: 110,
                              height: 36,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: selectedContainerIndex == 2
                                    ? Color(0xFFF0E796)
                                    : Theme.of(context).scaffoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50,
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.mail),
                                  Text(
                                    'Documents',
                                    style: TextStyle(
                                      color: Color(0xFF878D96),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                    ),
                                  )
                                ],
                              )),
                        ),
                        CustomSizedBoxWidth(width: 5.w),
                        InkWell(
                          onTap: () {
                            setState(() {});
                            selectContainer(3);
                          },
                          child: Container(
                              width: 110,
                              height: 36,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: selectedContainerIndex == 3
                                    ? Color(0xFFF0E796)
                                    : Theme.of(context).scaffoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50,
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.more_horiz),
                                  Text(
                                    'More',
                                    style: TextStyle(
                                      color: Color(0xFF878D96),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                    ),
                                  )
                                ],
                              )),
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
                        title: 'Fill the custom Package type'),
                    CustomSizedBoxHeight(height: 10),
                    AppTextFormField(
                        onChanged: (value) => _updateFormState(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter package type';
                          } else if (!RegExp(r'^[a-zA-Z ]*$').hasMatch(value)) {
                            return 'Please enter only alphabets';
                          }
                          return null;
                        },
                        controller: packageType,
                        toop: 0,
                        botm: 0,
                        hintText: 'Electronic'),
                    CustomSizedBoxHeight(height: 10),
                    CustomText(
                        textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Estimate weight (Kg)'),
                    CustomSizedBoxHeight(height: 10),
                    AppTextFormField(
                        onChanged: (value) => _updateFormState(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter weight';
                          }
                          return null;
                        },
                        keyboard: TextInputType.number,
                        controller: weightC,
                        toop: 0,
                        botm: 0,
                        hintText: '5'),
                  ],
                ),
                CustomSizedBoxHeight(height: 10),
                CustomText(
                    textStyle: AppStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                            size: 14.sp)
                        .textPoppinsMedium,
                    title: 'Payment method'),
                CustomSizedBoxHeight(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 0.50, color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(
                        children: [
                          CustomText(
                              textStyle: AppStyle(
                                      color: Color(0xFF878D96),
                                      fontWeight: FontWeight.w400,
                                      size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Select payment method'),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                paymentMethod(context);
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color(0xFF878D96),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(),
                Text(
                  'Total',
                  style: TextStyle(
                    color: Color(0xFF444444),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Applicable Fees',
                      style: TextStyle(
                        color: Color(0xFF878D96),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    Text(
                      '\$100',
                      style: TextStyle(
                        color: Color(0xFF878D96),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Products Taxes',
                      style: TextStyle(
                        color: Color(0xFF878D96),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    Text(
                      '\$10',
                      style: TextStyle(
                        color: Color(0xFF878D96),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total payments ',
                      style: TextStyle(
                        color: Color(0xFF878D96),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    Text(
                      '\$110',
                      style: TextStyle(
                        color: Color(0xFF878D96),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total payments ',
                          style: TextStyle(
                            color: Color(0xFF878D96),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                        Text(
                          '\$110',
                          style: TextStyle(
                            color: Color(0xFF847C3D),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        )
                      ],
                    ),
                    CustomButton(
                      title: 'Order',
                      width: 150,
                      ontap: isFormValid
                          ? () {
                              if (_formKey.currentState!.validate()) {
                                verificationOtp(context);
                              }
                            }
                          : () {},
                      color: isFormValid ? Color(0xFF847C3D) : Color(0xFF444444),
                      AppStyle: AppStyle(
                          color: isFormValid ? Colors.white : Color(0xFF878D96),
                              fontWeight: FontWeight.w500,
                              size: 12.sp)
                          .textPoppinsMedium,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void verificationOtp(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return Padding(
                padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
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
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 30,
                          ),
                          child: Pinput(

                            length: 5,
                            obscureText: true,
                            obscuringCharacter:'*',
                            controller: pinController,
                            focusNode: focusNode,
                            closeKeyboardWhenCompleted: true,

                            androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsUserConsentApi,
                            listenForMultipleSmsOnAndroid: true,


                            separatorBuilder: (index) => const SizedBox(width: 8),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'The OTP code cannot be empty';
                              }},
                            // onClipboardFound: (value) {
                            //   debugPrint('onClipboardFound: $value');
                            //   pinController.setText(value);
                            // },
                            hapticFeedbackType: HapticFeedbackType.lightImpact,
                            onCompleted: (pin) {
                              debugPrint('onCompleted: $pin');
                            },
                            onChanged: (value)=>{ _updateFormState()} ,
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
                          title: 'Confirms',
                          ontap:isFormValid? () async {

                              await Get.to(() => FindPicckR());
                              Navigator.pop(context);


                          }:(){},
                          color:isFormValid?Color(0xFF847C3D):Color(0xFF444444),
                          AppStyle: AppStyle(
                              color: isFormValid ? Colors.white : Color(0xFF878D96),
                                  fontWeight: FontWeight.w500,
                                  size: 12.sp)
                              .textPoppinsMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }

  void paymentMethod(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            // Wrap the builder with StatefulBuilder
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                                title: 'Payment method'),
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
                      Text(
                        'E-Wallet',
                        style: TextStyle(
                          color: Color(0xFF444444),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
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
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w600,
                                          size: 12.sp)
                                      .textPoppinsMedium,
                                  title: '\$534'),
                            ],
                          ),
                          Spacer(),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Theme.of(context).primaryColor, // This will affect the border color of the checkbox when it's disabled
                            ),
                            child: Radio(
                                value: 1,
                                groupValue: selectedValue,
                                onChanged: (int? value) {
                                  selectedValue = value!;
                                  setState(() {});
                                  selectedValue = value;
                                }),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
