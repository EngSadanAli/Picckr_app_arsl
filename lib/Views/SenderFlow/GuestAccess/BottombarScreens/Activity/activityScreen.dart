import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/KYC/kyc_Screen.dart';
import 'package:picckr_app/Views/PickerFlow/Trips/tabbar_screen/ongoing.dart';
import 'package:picckr_app/Views/PickerFlow/Trips/tabbar_screen/past.dart';
import 'package:picckr_app/Views/PickerFlow/Trips/tabbar_screen/request.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/tabbar_screen/ongoing.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/tabbar_screen/past.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

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
            title: 'Activity'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottom: PreferredSize(
          child: Divider(
            color: Color(0xFFDDE1E6), // Choose the color you want
            height: 1,
          ),
          preferredSize: Size.fromHeight(1), // Choose the height you want
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              dividerColor: Color(0xFFC1C7CD),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Color(0xFF847C3D),
              labelColor: Color(0xFF847C3D),
              unselectedLabelColor: Color(0xFFC1C7CD),
              labelStyle: const TextStyle(
                  color: Colors.red, fontSize: 13, fontWeight: FontWeight.w600),
              unselectedLabelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
              tabs: [

                Tab(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Ongoing",
                      ),
                      CustomSizedBoxWidth(width: 5),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: ShapeDecoration(
                          color: Color(0xFF847C3D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),child:const Center(
                        child: Text(
                          "2",style: TextStyle(color: Colors.white),
                        ),
                      ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Text(
                    "Past",
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [

                OngoingActivityG(),
                PastActivityG(),


              ]),
            )
          ],
        ),
      ),
    );
  }
}
