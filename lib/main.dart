import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:junaediakbar_app/app/controllers/theme_controller.dart';

import 'app/routes/app_pages.dart';

// void main() => runApp(
//       DevicePreview(
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );

void main() => runApp(MyApp());

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber,
    disabledColor: Colors.grey,
  ),
);

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.pink,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    disabledColor: Colors.grey,
  ),
);

class MyApp extends StatelessWidget {
  ThemeController _themeC = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: _lightTheme,
      darkTheme: _darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
    );
  }
}
