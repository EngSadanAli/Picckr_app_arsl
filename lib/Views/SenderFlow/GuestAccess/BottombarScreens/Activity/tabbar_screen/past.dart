import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Models.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Summary/activitySummary.dart';
import 'package:picckr_app/Views/PickerFlow/Summary/canceledBySender.dart';
import 'package:picckr_app/Views/PickerFlow/Summary/withdraw_summary.dart';
import 'package:picckr_app/Views/SenderFlow/CancelFlow/canceledBySender.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/canceledBySender.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/withdraw_summary.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';


class PastActivityG extends StatefulWidget {
  PastActivityG({super.key});

  @override
  State<PastActivityG> createState() => _PastActivityGState();
}

class _PastActivityGState extends State<PastActivityG> {
  // bool requestaccept=true;
  // bool requstAvailable = false;
final data=pastDataController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data.data.length,

          itemBuilder: (context, index) {
            return InkWell(onTap: (){
              // data.data[index].condition=='Complete'?Get.to(OrderHistory()):Get.to(CanceledBySender());
              if(data.data[index].condition=='Complete'){

                if(data.data[index].title=='Withdraw'){
                  print(data.data[index].title);
              Get.to(WithDrawSummaryPicckR());
                }else{
                  print('------------------------------');
                  print(data.data[index].title.runtimeType);
                  print('------------------------------');
                  Get.to(WithDrawSummaryPicckR());
                }

              }else{
                Get.to(CanceledBySenderActivityG());
              }
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
                          width: 0.50, color: Color(0xFFDDE1E6)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundColor:data.data[index].title=='Withdraw'?Color(0xFFCB3A31).withOpacity(.3): Color(0xFFF0E796),
                        child: Image.asset(
                          data.data[index].Image,
                          fit: BoxFit.fill,
                        ),
                        radius: 20.r,
                      ),
                      CustomSizedBoxWidth(width: 10.w),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${data.data[index].title}',
                                    style: TextStyle(
                                      color: Color(0xFF878D96),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '${data.data[index].title2}',
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
                                title: '${data.data[index].subtitle}'),


                          ]),


                      Spacer(),
                      Column(crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomText(
                            textStyle: AppStyle(
                                color: Color(0xFF878D96),
                                fontWeight: FontWeight.w500,
                                size: 12)
                                .textPoppinsMedium,
                            title: '${data.data[index].price}',),
                          Container(
                              width: 69,

                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: data.data[index].condition=='Complete'? Color(0xFF4BB543).withOpacity(.3):Color(0xFFCB3A31).withOpacity(.3),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                              ),child: Center(
                            child: Text(
                              '${data.data[index].condition}',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color:data.data[index].condition=='Complete'? Color(0xFF4BB543):Color(0xFFCB3A31),
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
