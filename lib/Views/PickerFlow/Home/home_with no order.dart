import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Views/PickerFlow/Home/Bottoms%20bar%20Screens/home_with%20_no_order.dart';
import 'package:picckr_app/Views/PickerFlow/Messages/messageScreen.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/ProfileScreen.dart';
import 'package:picckr_app/Views/PickerFlow/Trips/trips_screen.dart';
import 'package:picckr_app/Widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:picckr_app/Provider/bottomNavBarProvider.dart';
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final  List<Widget> _widgetOptions =  [
  HomeWithNoOrder(),
 TripsScreen(),
    MessageScreen(),
    PickerProfileScreen(),


  ];
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<BottomProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: _widgetOptions.elementAt(navigationProvider.currentIndex),
      ),
      bottomNavigationBar: AppBottomNavBar(currentIndex: navigationProvider.currentIndex,ontap:(index)=>navigationProvider.changePage(index)),
    );

  }
}
