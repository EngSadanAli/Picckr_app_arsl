import 'dart:ui';

import 'package:flutter/material.dart';
import 'appColor.dart';
import 'appconstant.dart';

class AppStyle{
  Color color;
  double size;
  FontWeight fontWeight;
  TextDecoration? decoration;
  Color?decorationcolor;
  double? thickness;
  AppStyle({required this.size,this.decoration, this.thickness,this.decorationcolor,required this.color,required this.fontWeight});

   TextStyle get textPoppinsRegular {
    return TextStyle(
      decoration: decoration,
      decorationColor: decorationcolor,
      decorationThickness: thickness,
      color:color,
      fontFamily: AppConstant.poppinsRegular,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }
  TextStyle get textPoppinslight {
    return TextStyle(
      decoration: decoration,
      decorationColor: decorationcolor,
      decorationThickness: thickness,
      color:color,
      fontFamily: AppConstant.poppinsLight,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }
  TextStyle get textPoppinssemiBOld {
    return TextStyle(
      decoration: decoration,
      decorationColor: decorationcolor,
      decorationThickness: thickness,
      color:color,
      fontFamily: AppConstant.poppinsSemibold,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }
  TextStyle get textPoppinsMedium {
    return TextStyle(
      decoration: decoration,
      decorationColor: decorationcolor,
      decorationThickness: thickness,
      color:color,
      fontFamily: AppConstant.poppinsMedium,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }






}