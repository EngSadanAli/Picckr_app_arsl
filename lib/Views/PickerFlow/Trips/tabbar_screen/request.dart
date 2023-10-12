import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';


class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  bool requestaccept=true;
  // bool requstAvailable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 2,
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 10.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xFF878D96)),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Image.asset(
                    AppImages.profile2,
                    fit: BoxFit.fill,
                  ),
                  radius: 20.r,
                ),
                CustomSizedBoxWidth(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        textStyle: AppStyle(
                            color: Color(0xFF847C3D),
                            fontWeight: FontWeight.w400,
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
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Harvard University',
                            style: TextStyle(
                              color: Color(0xFF847C3D),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow,),
                        CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF878D96),
                                fontWeight: FontWeight.w400,
                                size: 12)
                                .textPoppinsMedium,
                            title: '4.9'),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      textStyle: AppStyle(
                          color: Color(0xFF847C3D),
                          fontWeight: FontWeight.w500,
                          size: 12)
                          .textPoppinsMedium,
                      title: '\$110',),
                    CustomText(
                        textStyle: AppStyle(
                            color: Color(0xFF878D96),
                            fontWeight: FontWeight.w500,
                            size: 12)
                            .textPoppinsMedium,
                        title: '1.5 km'),
                    CustomText(
                      textStyle: AppStyle(
                          color: Color(0xFF847C3D),
                          fontWeight: FontWeight.w400,
                          size: 12)
                          .textPoppinsMedium,
                      title: '00:15',)
                  ],
                )
              ],
            ),
            Visibility(visible: requestaccept,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(title: 'Decline',
                      ontap: () {},
                      height: 36.h,
                      width: 120.w,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderColor: Colors.red,
                      AppStyle: AppStyle(color: Colors.red,
                          size: 12.sp,
                          fontWeight: FontWeight.w500)
                          .textPoppinsMedium),
                  CustomButton(title: 'Accept',
                      color: Color(0xFF847C3D),
                      ontap: () {setState(() {

                      });
                      requestaccept=false;
                      },
                      height: 36.h,
                      width: 120.w,
                      AppStyle: AppStyle(color: Colors.white,
                          size: 12.sp,
                          fontWeight: FontWeight.w500)
                          .textPoppinsMedium),

                ],),
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
            Visibility(visible: requestaccept?false:true,
                child: Container(
                    width: 311,
                    height: 34,

                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF2F4F8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

                    ),
                    child: AppTextFormField(controller: TextEditingController(),hintText: 'Send message to John Corbuzier',botm: 5,toop: 0,)  ))
          ],),
        );
      },),
    );
  }
}
