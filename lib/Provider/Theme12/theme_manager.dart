import 'package:flutter/material.dart';
import 'package:picckr_app/Provider/Theme12/storage.dart';
import 'package:picckr_app/Utils/appconstant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    // fontFamily: AppConstant.LightFont,
    primaryColor: Colors.white,
    hoverColor: Colors.black,

    focusColor: Color(0xFF847C3D),
    iconTheme: IconThemeData(color: Color(0xFF878D96)),
    appBarTheme: AppBarTheme(color: Colors.black),
     canvasColor: Colors.black,
    scaffoldBackgroundColor:  Colors.black,
    cardColor: Color(0xFF847C3D),
    bottomAppBarColor: Colors.black,
navigationBarTheme:const NavigationBarThemeData(backgroundColor: Colors.black),
bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black),

      dividerColor: Color(0xFF847C3D),
//       hintColor: Colors.white,
  );

  final lightTheme = ThemeData(
    primaryColor: Colors.black,
    appBarTheme: AppBarTheme(color: Color(0xffffffff)),
    iconTheme: IconThemeData(color: Color(0xFF847C3D)),
    scaffoldBackgroundColor: const Color(0xffffffff),
    canvasColor: Colors.white,
    cardColor: Color(0xFF847C3D),
    bottomAppBarColor: Colors.white,
    focusColor: Color(0xFF847C3D),
    hoverColor: Color(0xFF847C3D),

    navigationBarTheme:const NavigationBarThemeData(backgroundColor: Colors.white),


    dividerColor: Color(0xFF847C3D),
    // bottomAppBarColor: Color(0xffffffff)
  );

  ThemeData? _themeData;

  ThemeData? getTheme() => _themeData;
  ThemeNotifier() : _themeData = ThemeData.light() {
    _initializeTheme();
  }

  void _initializeTheme() async {
    var value = await StorageManager.readData('themeMode');
    var themeMode = value ?? false;
    AppConstant.themValue = themeMode;

    if (themeMode) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }
    notifyListeners();
  }



  //Todo my code
  bool? _setTheme;

  bool? gettTheme() => _setTheme;

  void getStoreValue() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool("themeValue") != null) {
      var themeBoolValue = prefs.getBool("themeValue");
      AppConstant.themValue = themeBoolValue!;
    } else {
      AppConstant.themValue = false;
    }
  }

  void setTheme({required bool themeValue}) async {
    _setTheme = themeValue;
    AppConstant.themValue = themeValue;
    if (themeValue == false) {
      _themeData = lightTheme;
    } else {
      _themeData = darkTheme;
    }
    StorageManager.saveData('themeMode', themeValue);
    notifyListeners();
  }
}
