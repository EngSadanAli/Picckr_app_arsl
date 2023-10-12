import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/AppImages.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/BottombarScreens/Activity/ActivitySummary/activitySummary.dart';

class PastScreenData {
  String Image;
  String title;
  String title2;
  String subtitle;
  String price;
  String condition;
  void Function()? onTap;

  PastScreenData({required this.Image,required this.title,required this.title2,required this.condition,required this.price,required this.subtitle,this.onTap});
}
class pastDataController{
  
  List<PastScreenData> data =[
    PastScreenData(Image: AppImages.scooter, title: 'Sent to ', title2: 'Harvard University',condition: 'Complete', price: '\$100', subtitle: 'Today at 13:30 pM',onTap: (){Get.to(CompletedOrder);}),
  PastScreenData(Image: AppImages.withdraw, title: 'Withdraw ', title2: '',condition: 'Complete', price: '\$100', subtitle: 'Today at 17:30 PM',onTap: (){Get.to(CompletedOrder);}),
  PastScreenData(Image: AppImages.scooter, title: 'Sent to ', title2: 'Cambridge  University',condition: 'Complete', price: '\$100', subtitle: 'Today at 13:30 PM',),
    PastScreenData(Image: AppImages.withdraw, title: 'Withdraw ', title2: '',condition: 'Complete', price: '\$100', subtitle: 'Today at 09:30 AM'),

    PastScreenData(Image: AppImages.scooter, title: 'Sent to ', title2: 'Harvard University',condition: 'cancel', price: '\$100', subtitle: 'Today at 12:30 AM',),
  PastScreenData(Image: AppImages.scooter, title: 'Sent to ', title2: 'Cambridge  University',condition: 'Complete', price: '\$100', subtitle: 'Today at 13:30 PM',),
  PastScreenData(Image: AppImages.scooter, title: 'Sent to ', title2: 'Harvard University',condition: 'cancel', price: '\$100', subtitle: 'Today at 18:30 PM',),
    PastScreenData(Image: AppImages.withdraw, title: 'Withdraw ', title2: '',condition: 'Complete', price: '\$100', subtitle: 'Today at 11:30 AM'),

  ];
}