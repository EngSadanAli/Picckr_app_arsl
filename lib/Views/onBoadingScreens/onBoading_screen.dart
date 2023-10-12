import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picckr_app/Views/onBoadingScreens/signin_option.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:get/get.dart';
import '../../Utils/appStyle.dart';
import '../../Widgets/CustomButton/customButton.dart';
import '../../Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoadingScreen extends StatefulWidget {
  const OnBoadingScreen({super.key});

  @override
  State<OnBoadingScreen> createState() => _OnBoadingScreebState();
}

class _OnBoadingScreebState extends State<OnBoadingScreen> {
  PageController pageController = PageController();
  double _progress = 0.3;
  int _currentPage = 0;
  bool _pageMovedForward = false;

  void _updateProgress() {
    setState(() {
      if (_currentPage == 0) {
        _progress = 0.3;
      } else if (_currentPage == 1) {
        _progress = 0.6;
      } else if (_currentPage == 2) {
        _progress = 1.0;
      }
    });
  }
  void _decreaseProgress() {
    setState(() {
      if (_currentPage == 1) {
        _progress = 0.3;
      } else if (_currentPage == 2) {
        _progress = 0.6;
      }
    });
  }

  List onBoadingData = [
    {
      "title": "Saving your money",
      "description": "Affordable cost.",
      "image": "assets/images/1.png",
    },
    {
      "title": "Delivering your package quickly",
      "description": "Your package will arrive on time.",
      "image": "assets/images/2.png",
    },
    {
      "title": "Saving your time",
      "description": "You can send package anytime.",
      "image": "assets/images/3.png",
    },
  ];

  continueMethod() {
    Get.to(()=>SignInOption());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 20.0.w,top: 25.h),
            child: InkWell(
              onTap: () {
                continueMethod();
              },
              child: CustomText(
                  textStyle: AppStyle(
                          color: Color(0xFF847C3D),
                          fontWeight: FontWeight.w700,
                          size: 16.sp)
                      .textPoppinsMedium,
                  title: 'Skip'),
            ),
          ),
        ],
      ),
      body: PageView.builder(
        // physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        itemCount: onBoadingData.length,
        onPageChanged: (index) {
          setState(() {
            _pageMovedForward = index > _currentPage;
            _currentPage = index;
            _updateProgress();
          });
        },

        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinearProgressIndicator(
                  value: _progress,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF847C3D)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10.h),
                  child: CustomText(
                      textStyle: AppStyle(
                              color: Color(0xFF847C3D),
                              fontWeight: FontWeight.w700,
                              size: 30.sp)
                          .textPoppinsMedium,
                      title: onBoadingData[index]['title']),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10.h),
                  child: CustomText(
                      textStyle: AppStyle(
                              color: Color(0xFF878D96),
                              fontWeight: FontWeight.w700,
                              size: 14.sp)
                          .textPoppinsMedium,
                      title: onBoadingData[index]['description']),
                ),
                Expanded(
                  child:
                  Container(), // This will take all the available space between the TextFormFields and the button
                ),
                Center(
                    child: Image.asset(
                  onBoadingData[index]['image'],
                  height: 200,
                  width: 200,
                )),
                Expanded(
                  child:
                      Container(), // This will take all the available space between the TextFormFields and the button
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: CustomButton(
                    title: 'Continue',
                    ontap: () {
                      if (_currentPage < 2) {
                        _currentPage++;
                        pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                        _updateProgress();
                      }
                      if(index==onBoadingData.length-1){
                        Get.to(SignInOption());
                      }
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
      ),
    );
  }
}
