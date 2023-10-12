import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
class MessageImageOpen extends StatelessWidget {
  const MessageImageOpen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSizedBoxHeight(height: 20.h),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  size: 18,
                  color: Color(0xFF847C3D),
                )),
            Container(
              width: 375,
              height: 812,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.black),
              child: Stack(
                children: [

                  Positioned(
                    left: -0.50,
                    top: 218.50,
                    child: Container(
                      width: 375,
                      height: 375,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],),
        ),
      ),
    );
  }
}
