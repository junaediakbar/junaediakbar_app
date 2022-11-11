import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  RxBool isLightTheme = false.obs;

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> changeThemeMode() async {
    isLightTheme.value = !isLightTheme.value;
    Get.changeThemeMode(isLightTheme.value ? ThemeMode.dark : ThemeMode.light);
    SharedPreferences pref = await _prefs;
    pref.setBool('theme', isLightTheme.value);
    update();
  }

  _getThemeStatus() async {
    var _isLight = _prefs.then((SharedPreferences prefs) {
      return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
    }).obs;
    isLightTheme.value = (await _isLight.value)!;
    Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  }
}
