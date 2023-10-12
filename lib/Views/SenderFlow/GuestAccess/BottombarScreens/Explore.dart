
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF847C3D),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(padding: EdgeInsets.symmetric(horizontal: 20.w),
                color: Color(0xFF847C3D),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFFFF9CA),
                          child: Icon(Icons.person,size: 40.h,color: AppColor.yellow,),
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
                                title: 'Good Morning'),
                            CustomText(
                                textStyle: AppStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    size: 14)
                                    .textPoppinsMedium,
                                title: 'Sign up to send the package ')
                          ],
                        )
                      ],
                    ),
                    CustomSizedBoxHeight(height: 10.h),

                  ],
                ),
              ),


              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomSizedBoxHeight(height: 10.h),
                        AppTextFormField(controller: TextEditingController(), toop: 0, botm: 0, hintText: 'Find a designation',prefixIcon: Icon(Icons.search),),
                        CustomSizedBoxHeight(height: 10.h),
                        CustomText(
                            textStyle: AppStyle(
                                color: AppColor.black,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Choose Vehicle'),
                        CustomSizedBoxHeight(height: 10.h),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Column(children: [

                            Container(
                              width: 72,
                              height: 72,
                              padding: const EdgeInsets.all(16),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF0E796),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),child: Image.asset(AppImages.scooter)),
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
                          ],),
                          Column(children: [

                            Container(
                                width: 72,
                                height: 72,
                                padding: const EdgeInsets.all(16),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF0E796),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),child: Image.asset(AppImages.car)),
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
                          ],), Column(children: [

                            Container(
                                width: 72,
                                height: 72,
                                padding: const EdgeInsets.all(16),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF0E796),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),child: Image.asset(AppImages.van)),
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
                          ],), Column(children: [

                            Container(
                                width: 72,
                                height: 72,
                                padding: const EdgeInsets.all(16),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF0E796),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),child: Image.asset(AppImages.truck)),
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
                          ],)
                        ],),

                        CustomText(
                            textStyle: AppStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                size: 14.sp)
                                .textPoppinsMedium,
                            title: 'Why PicckR?'),
                        CustomSizedBoxHeight(height: 10.h),

                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                              width: 343,
                              height: 72,

                              padding: const EdgeInsets.all(16),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(

                                  borderRadius:
                                  BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
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
                                                    color: Color(
                                                        0xFF878D96),
                                                    fontWeight:
                                                    FontWeight
                                                        .w400,
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
                          onTap: () {

                          },
                          child: Container(
                              width: 343,
                              height: 72,

                              padding: const EdgeInsets.all(16),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(

                                  borderRadius:
                                  BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
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
                                                    color: Color(
                                                        0xFF878D96),
                                                    fontWeight:
                                                    FontWeight
                                                        .w400,
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
                          onTap: () {

                          },
                          child: Container(
                              width: 343,
                              height: 72,

                              padding: const EdgeInsets.all(16),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(

                                  borderRadius:
                                  BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
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
                                                    color: Color(
                                                        0xFF878D96),
                                                    fontWeight:
                                                    FontWeight
                                                        .w400,
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
    );;
  }
}
