import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:junaediakbar_app/app/config/app_colors.dart';
import 'package:junaediakbar_app/app/config/app_buttons.dart';

import 'package:junaediakbar_app/app/config/app_text_styles.dart';
import 'package:junaediakbar_app/app/modules/home/views/navbar.dart';
import 'package:junaediakbar_app/app/modules/home/views/sosmed_icons.dart';
import 'package:junaediakbar_app/app/modules/home/views/tab_nav.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveDesignFirstWay(),
    );
  }
}

class ResponsiveDesignFirstWay extends GetResponsiveView<HomeController> {
  @override
  Widget builder() {
    if (screen.isPhone) {
      return renderWidget(
          iconData: Icons.phone, color: Colors.blue, text: 'Phone');
    } else if (screen.isDesktop) {
      return renderWidget(
          iconData: Icons.desktop_windows, color: Colors.red, text: 'Desktop');
    } else if (screen.isTablet) {
      return renderWidget(
          iconData: Icons.tablet, color: Colors.green, text: 'Tablet');
    } else if (screen.isWatch) {
      return renderWidget(
          iconData: Icons.watch, color: Colors.orange, text: 'Watch');
    }
    return renderWidget(
        iconData: Icons.phone, color: Colors.blue, text: 'Phone');
  }

  renderWidget(
      {required IconData iconData,
      required Color color,
      required String text}) {
    return Column(
      children: [
        navbar(screen),
        Container(
          padding: EdgeInsets.symmetric(vertical: 32),
          height: screen.height * 0.9,
          width: double.infinity,
          color: color,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SosmedIcons(),
              SizedBox(
                width: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: screen.width * 0.7,
                  child: ListView(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: screen.height * 0.8,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: screen.height * 0.8,
                          color: AppColors.bluePrimary,
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: screen.height * 0.8,
                          color: AppColors.blueSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TabNav(),
            ],
          ),
        ),
      ],
    );
  }
}
