import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picckr_app/Provider/Theme12/storage.dart';
import 'package:picckr_app/Provider/Theme12/theme_manager.dart';
import 'package:picckr_app/Provider/profileScreenProvider/KycProvider.dart';
import 'package:picckr_app/Provider/profileScreenProvider/profileScreenProvider.dart';
import 'package:picckr_app/Views/KYC/ApprovelReject.dart';
import 'package:picckr_app/Views/KYC/ApprovelSuccess.dart';
import 'package:picckr_app/Views/KYC/ApprovelWaiting.dart';
import 'package:picckr_app/Views/KYC/kyc_Screen.dart';
import 'package:picckr_app/Views/PickerFlow/Home/home_with%20no%20order.dart';
import 'package:picckr_app/Views/SenderFlow/GuestAccess/ExploreGuessaccess.dart';
import 'package:picckr_app/Views/onBoadingScreens/onBoading_screen.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:picckr_app/Provider/bottomNavBarProvider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the theme preference before runApp()
  final themePreference = await StorageManager.readData('themeMode');
  final initialTheme = themePreference ?? false;

  runApp(MyApp(initialTheme: initialTheme));
}

class MyApp extends StatelessWidget {
  final bool initialTheme;

  const MyApp({Key? key, required this.initialTheme}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileScreenProvider()),
        ChangeNotifierProvider(create: (_) => KycProvider()),
        ChangeNotifierProvider(create: (_) => BottomProvider()),
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
      ],
      child: Consumer<ThemeNotifier>(
        builder: (context, theme, child) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Picckr App',
                theme: theme.getTheme(),
                home: OnBoadingScreen(),
              );
            },
          );
        },
      ),
    );
  }
}



