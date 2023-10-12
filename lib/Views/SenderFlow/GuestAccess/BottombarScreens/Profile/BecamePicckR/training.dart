import 'package:flutter/material.dart';
import 'package:picckr_app/Provider/profileScreenProvider/KycProvider.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/KYC/ApprovelWaiting.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Explore.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/BecamePicckR/ApprovelWaiting.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/ExploreGuessaccess.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/bottamNavBar.dart';
import 'package:picckr_app/Views/SenderFlow/Signin/SigninExplore.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/TextFormFields/appTextFormField.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PicckRTraining extends StatefulWidget {
  PicckRTraining({super.key});

  @override
  State<PicckRTraining> createState() => _PicckRTrainingState();
}

class _PicckRTrainingState extends State<PicckRTraining> {
  int? selectedValue;

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
            title: 'PicckR Account'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(
            onTap: () {
              Get.to(GuessHome());
            },
            child: Icon(Icons.arrow_back_ios_new_sharp,color: Theme.of(context).primaryColor,)),

        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Training and onboarding materials:',
                style: TextStyle(
                  color: Color(0xFF847C3D),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.50,
                ),
              ),
              CustomSizedBoxHeight(height: 5.h),
              Text(
                'This training aims to ensure that PicckRs understand how to navigate the app and provide a quality experience.',
                style: TextStyle(
                  color: Color(0xFF878D96),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              CustomSizedBoxHeight(height: 5.h),
              Text(
                'How to navigate the app',
                style: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
           CustomSizedBoxHeight(height: 5.h),
              Container(
                width: 343,
                height: 179,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.training)),
                  color: Colors.black.withOpacity(0.4000000059604645),
                ),
                child: Center(child: Container(
                  width: 36,
                  height: 36,


                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0x66C1C7CD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),child:

                Icon(Icons.play_arrow,color: Colors.white,),)


                ),
              ),
              CustomSizedBoxHeight(height: 5.h),
              Text(
                'How to navigate the app',
                style: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
              CustomSizedBoxHeight(height: 5.h),
              Container(
                width: 343,
                height: 179,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.training)),
                  color: Colors.black.withOpacity(0.4000000059604645),
                ),
                child: Center(child: Container(
                  width: 36,
                  height: 36,


                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0x66C1C7CD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),child:

                Icon(Icons.play_arrow,color: Colors.white,),)


                ),
              ),
              CustomSizedBoxHeight(height: 5.h),
              Text(
                'How to navigate the app',
                style: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
              CustomSizedBoxHeight(height: 5.h),
              Container(
                width: 343,
                height: 179,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.training)),
                  color: Colors.black.withOpacity(0.4000000059604645),
                ),
                child: Center(child: Container(
                  width: 36,
                  height: 36,


                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0x66C1C7CD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),child:

                Icon(Icons.play_arrow,color: Colors.white,),)


                ),
              )



            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(height: 75.h,child: Column(children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomButton(
            title: 'Next',
            ontap: () {
              Get.offAll(()=>GuessHome());
            },
            color: Color(0xFF847C3D),
            AppStyle: AppStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                size: 12.sp)
                .textPoppinsMedium,
          ),
        ),
      ],)),
    );
  }


}
