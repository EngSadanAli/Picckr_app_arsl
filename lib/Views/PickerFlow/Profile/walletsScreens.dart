import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class WalletsScreen extends StatelessWidget {
  const WalletsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            textStyle: AppStyle(
                color:Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
                size: 18.sp)
                .textPoppinsMedium,
            title: 'Wallet'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(onTap: (){Get.back();},
            child: Icon(Icons.arrow_back_ios)),
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
      ),

      body:
          SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              child: Column(
                children: [
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
                      InkWell(
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
                  Divider(),
                  CustomSizedBoxHeight(height: 20.h)
                ],
              ),
            ),
          ),

    );
  }
}
