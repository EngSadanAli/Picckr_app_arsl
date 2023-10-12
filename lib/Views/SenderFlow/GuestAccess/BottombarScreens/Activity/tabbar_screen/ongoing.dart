import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Summary/activitySummary.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/activitySummary.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/canceledByReciever.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/canceledBySender.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/ongoingActivity.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';


class OngoingActivityG extends StatefulWidget {
  const OngoingActivityG({super.key});

  @override
  State<OngoingActivityG> createState() => _OngoingActivityGState();
}

class _OngoingActivityGState extends State<OngoingActivityG> {
  bool requestaccept=true;
  // bool requstAvailable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 2,

          itemBuilder: (context, index) {
            return InkWell(onTap: (){Get.to(OnGoingActivityG());},
              child: Container(
                  width: 343,
                  height: 72,
                  margin: EdgeInsets.all(10),
                  padding: const EdgeInsets.all(16),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 0.50, color: Color(0xFFDDE1E6)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundColor: Color(0xFFF0E796),
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
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '',
                                    style: TextStyle(
                                      color: Color(0xFF878D96),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'John Doe',
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
                            CustomText(
                                textStyle: AppStyle(
                                    color: Color(0xFF878D96),
                                    fontWeight: FontWeight.w400,
                                    size: 12)
                                    .textPoppinsMedium,
                                title: 'Today at 13:30 PM'),


                          ]),


                      Spacer(),
                      Column(
                        children: [
                          CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF878D96),
                                fontWeight: FontWeight.w500,
                                size: 12)
                                .textPoppinsMedium,
                            title: '\$100',),
              Container(
              width: 69,

              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
              color: Color(0xFFC9F3FB),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              ),child: Center(
                child: Text(
                  'Ongoing',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF016DB2),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
              )),
                        ],
                      )
                    ]
                    ,
                  )),
            );
          }),
    );
  }
}
