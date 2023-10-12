import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/SetRoute.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';

class SaveAddressScreen extends StatelessWidget {
  const SaveAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomSheet:ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0.r),
        topRight: Radius.circular(30.0.r),
      ),

      child: Container(
        height: 328.h, // Set the height as needed

        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: const Text(
                  'Add new Address',
                  style: TextStyle(
                    color: Color(0xFF847C3D),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                  ),
                ),
              ),
              CustomSizedBoxHeight(height: 10.h),
              Divider(),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Harvard University',
                          style: TextStyle(
                            color: Color(0xFF847C3D),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                        GestureDetector(onTap: (){Get.off(SetRoute());},
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Color(0xFF847C3D),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                        )


                      ],),
                    CustomSizedBoxHeight(height: 10.h),
                    Text(
                      'Massachusetts Hall, Cambridge, MA 02138, United States of America',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    CustomSizedBoxHeight(height: 10.h),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Address name',
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
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomSizedBoxHeight(height: 10.h),
                    AppTextFormField(controller: TextEditingController(), toop: 0, botm: 0, hintText: 'University')

                  ],
                ),

              ),

              CustomSizedBoxHeight(height: 20.h),
              Divider(),
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomButton(
                  title: 'Save Address',
                  ontap: () {
                    Get.back();
                  },
                  color: Color(0xFF847C3D),
                  AppStyle: AppStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      size: 12.sp)
                      .textPoppinsMedium,
                ),
              )


            ],
          ),
        ),
      ),
    ),
      body:Container(height: double.infinity,width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppImages.map,),fit: BoxFit.fill)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20.w,top: 100.h),
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
}
