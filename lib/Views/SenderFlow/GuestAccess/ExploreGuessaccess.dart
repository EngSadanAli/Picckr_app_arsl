import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Home/Bottoms%20bar%20Screens/home_with%20_no_order.dart';
import 'package:picckr_app/Views/PickerFlow/Messages/messageScreen.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/ProfileScreen.dart';
import 'package:picckr_app/Views/PickerFlow/Trips/trips_screen.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/activityScreen.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Explore.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Favourite/favourite.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Profile/ProfileScreen.dart';
import 'package:picckr_app/Views/SenderFlow/Signin/SigninExplore.dart';
import 'package:picckr_app/Widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:picckr_app/Provider/bottomNavBarProvider.dart';
class GuessHome extends StatelessWidget {
  GuessHome({Key? key}) : super(key: key);
  final  List<Widget> _widgetOptions =  [
    SignInExplore(),
    FavouriteScreen(),
    ActivityScreen(),
    // MessageScreen(),
    SenderPickerProfileScreen(),


  ];
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<BottomProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: _widgetOptions.elementAt(navigationProvider.currentIndex),
      ),
      bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(

            items: [
              BottomNavigationBarItem(
                  backgroundColor:Theme.of(context).scaffoldBackgroundColor,icon: Icon(Icons.search),label: 'Explore'
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),label: 'favourite'
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.assignment),label: 'Activity'
              ),
              const  BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined),label: 'Profile'
              ),

            ],
            iconSize: 25,
            selectedItemColor: Color(0xFF847C3D),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Color(0xFF878D96),
            selectedLabelStyle:AppStyle(size: 12,fontWeight: FontWeight.w500,color: Color(0xFF847C3D)).textPoppinsMedium,
            unselectedLabelStyle:AppStyle(size: 12,fontWeight: FontWeight.w500,color: Color(0xFF878D96)).textPoppinsMedium,

            onTap:(index)=>navigationProvider.changePage(index),currentIndex: navigationProvider.currentIndex,))  );

  }
}