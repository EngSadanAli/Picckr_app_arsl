import 'package:flutter/material.dart';
import 'package:picckr_app/Utils/appColor.dart';
import 'package:picckr_app/Utils/appStyle.dart';
import 'package:picckr_app/Views/PickerFlow/Profile/addressScreen.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/saveAddress.dart';
import 'package:picckr_app/Views/PickerFlow/SetRoute/selectViaMap.dart';
import 'package:picckr_app/Views/SenderFlow/FindDesignation/saveAddress.dart';
import 'package:picckr_app/Views/SenderFlow/FindDesignation/selectViaMap.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/ExploreGuessaccess.dart';
import 'package:picckr_app/Views/SenderFlow/SetDesignation/RecipientsDetail.dart';
import 'package:picckr_app/Widgets/CustomButton/customButton.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxheight.dart';
import 'package:picckr_app/Widgets/SizeBox/sizedboxwidth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:picckr_app/Widgets/customtext.dart';
import 'package:get/get.dart';

class SetRouteG extends StatelessWidget {
  SetRouteG({super.key});

  TextEditingController pickaddress = TextEditingController();
  TextEditingController designation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                    child: InkWell(
                        onTap: () {
                          Get.to(GuessHome());
                        },
                        child: Icon(Icons.arrow_back_ios,color: Theme.of(context).primaryColor,)),
                  ),

                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 20.h),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100.h,width: 280.w,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Color(0xFF878D96)),
                          ),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.radio_button_checked,
                                    color: Colors.blue,
                                  ),
                                  Dash(
                                      direction: Axis.vertical,
                                      length: 25.h,
                                      dashLength: 5,
                                      dashColor: Color(0xFF878D96)),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                              CustomSizedBoxWidth(width: 5.w),
                              Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  CustomSizedBoxHeight(height: 10),
                                  SizedBox(
                                    width: 200.w,
                                    height: 30.h,
                                    child: TextFormField(
                                      controller: pickaddress,
                                      decoration: InputDecoration(
                                          border: InputBorder.none
                                          ,hintStyle: TextStyle(color:Color(0xFF878D96)),
                                          hintText: ' Current Location'),
                                    ),
                                  ),
                               Divider(color: Colors.blueGrey,),

                                  SizedBox(
                                    width: 200.w,
                                    height: 30.h,
                                    child: TextFormField(
                                      controller: designation,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,hintStyle: TextStyle(color:Color(0xFF878D96)),
                                          hintText: 'Find a designation'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        CustomSizedBoxHeight(height: 10.h),
                        InkWell(onTap: (){Get.off(SelectViaMapG());},
                          child: Container(
                            width: 142,
                            height: 36,
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.map,color: Colors.lightBlue,),

                                Text(
                                  'Select via map',
                                  style: TextStyle(
                                    color: Color(0xFF878D96),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                  ),
                                )
                              ],
                            ),),
                        )                    ],
                    ),
                  ),
                ],
              ),
          CustomSizedBoxHeight(height: 10.h),
              Divider(),
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Saved places',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
              ),
              CustomSizedBoxHeight(height: 10.h),
              SizedBox(height: 100.h,
                child: ListView.builder(itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (
                    context, index) {
                  return Row(
                    children: [
                      InkWell(onTap: (){Get.off(SaveAddressScreenG());},
                        child: Container(
                          margin:   EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                            width: 220.w,
                            height: 64.h,
                            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(6),
                          ),
                          ),child:
                          Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Icon(Icons.add,color: Color(0xFF847C3D,),),
                          CustomSizedBoxWidth(width: 10.w),
                          Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                              'Add New Address',
                              style: TextStyle(
                                color: Color(0xFF444444),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 1.50,
                              ),
                            ),
                            Text(
                              'Save your favourite places',
                              style: TextStyle(
                                color: Color(0xFF878D96),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            )
                          ],)

                            ]),),
                      ),
                      Container(
                        margin:   EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                        width: 150.w,
                        height: 64.h,
                        padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),child:
                      Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_bag,color: Color(0xFF847C3D,),),
                            CustomSizedBoxWidth(width: 10.w),
                            Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Work',
                                  style: TextStyle(
                                    color: Color(0xFF444444),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 1.50,
                                  ),
                                ),
                                Text(
                                  'Google building',
                                  style: TextStyle(
                                    color: Color(0xFF878D96),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                )
                              ],)

                          ]),)
                    ],
                  );

                },),
              ),
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Recent searches',
                  style: TextStyle(
                    color:Theme.of(context).primaryColor,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
              ),
              CustomSizedBoxHeight(height: 10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: InkWell(onTap: (){Get.to(ReciptientDetailScreen());},
                  child: Container(height: 500.h,
                    child: ListView.builder(itemCount: 500,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(children: [
                          Icon(Icons.location_on,color: Colors.red,),
                          CustomSizedBoxWidth(width: 10.w),

                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                              'Harvard University',
                              style: TextStyle(
                                color: Color(0xFF444444),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 1.50,
                              ),
                            ),
                            Text(
                              'Massachusetts Hall, Cambridge, MA 02138',
                              style: TextStyle(
                                color: Color(0xFF878D96),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            )
                          ],)
                        ],),
                      );
                    },),
                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
