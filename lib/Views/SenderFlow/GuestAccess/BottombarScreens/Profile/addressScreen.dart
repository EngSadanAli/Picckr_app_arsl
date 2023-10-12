import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class SenderAddressScreen  extends StatelessWidget {

  const SenderAddressScreen({super.key});

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
            title: 'Address'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(onTap: (){Get.back();},
            child: Icon(Icons.arrow_back_ios,color: Theme.of(context).primaryColor,)),
        bottom: PreferredSize(
          child: Divider(
           color: Theme.of(context).primaryColor.withOpacity(.5),// Choose the color you want
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      textStyle: AppStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                          size: 14.sp)
                          .textPoppinsMedium,
                      title: 'Save address (0/3)'),
                  InkWell(
                    onTap: () {
                      AddAdressBottomSheet(context);
                    },
                    child: CustomText(
                        textStyle: AppStyle(
                            color: Color(0xFF847C3D),
                            fontWeight: FontWeight.w500,
                            size: 14.sp)
                            .textPoppinsMedium,
                        title: 'Add Address'),
                  ),
                ],
              ),
            ),
            CustomSizedBoxHeight(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You don’t have saved address.\nPlease add address first',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF878D96),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ],
            ),
            CustomSizedBoxHeight(height: 50.h),
          ],
        ),
      )

    );
  }
  void AddAdressBottomSheet(BuildContext context) {
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
                              title: 'Edit Adress'),
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
                          CustomText(
                              textStyle: AppStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Address Type'),
                          CustomSizedBoxHeight(height: 10),
                          Row(
                            children: [
                              InkWell(onTap: () {

                              },
                                child: Container(
                                  width: 88,
                                  height: 36,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF847C3D).withOpacity(.5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF444444)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      Icon(Icons.home, size: 14.h,color: Color(0xFF847C3D),),
                                      CustomText(
                                          textStyle: AppStyle(
                                              color: Theme.of(context).primaryColor,
                                              fontWeight: FontWeight.w500,
                                              size: 12.sp)
                                              .textPoppinsMedium,
                                          title: 'Home'),

                                    ],),),
                              ),
                              CustomSizedBoxWidth(width: 20.w),


                            ],
                          ),
                          CustomSizedBoxHeight(height: 10),
                          CustomText(
                              textStyle: AppStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Building Name'),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
                              toop: 0,
                              botm: 0,
                              hintText: 'Input a building name'),
                          CustomSizedBoxHeight(height: 10),
                          CustomText(
                              textStyle: AppStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'House Number'),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
                              toop: 0,
                              botm: 0,
                              hintText: 'e.g 456'),
                          CustomSizedBoxHeight(height: 10),
                          CustomText(
                              textStyle: AppStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w500,
                                  size: 14.sp)
                                  .textPoppinsMedium,
                              title: 'Set location'),
                          CustomSizedBoxHeight(height: 10),
                          AppTextFormField(
                              controller: TextEditingController(),
                              toop: 4,
                              botm: 0,
                              hintText: 'set location',
                              prefixIcon: Icon(
                                  Icons.location_on, color: Color(0xFF444444),
                                  size: 16)),
                          CustomSizedBoxHeight(height: 10),
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 50.h),
              Divider(color:  Theme.of(context).primaryColor.withOpacity(.5),),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: CustomButton(
                        title: ''
                            'Save Address',
                        ontap: () {},
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
