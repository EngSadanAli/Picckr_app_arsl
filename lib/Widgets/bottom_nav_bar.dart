import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/appColor.dart';
import '../Utils/appStyle.dart';
import '../Utils/appconstant.dart';
class AppBottomNavBar extends StatelessWidget {
   AppBottomNavBar({Key? key, this.ontap,required this.currentIndex}) : super(key: key);

void Function(int)? ontap;
int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(

            items: [
              BottomNavigationBarItem(
                  backgroundColor:Theme.of(context).scaffoldBackgroundColor,icon: Icon(Icons.home_outlined),label: 'Home'
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.assignment),label: 'Trips'
              ),
             const BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined),label: 'Message'
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

            onTap: ontap,currentIndex: currentIndex,)),
    );
  }
}
