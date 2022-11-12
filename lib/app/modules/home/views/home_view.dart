import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:junaediakbar_app/app/config/app_colors.dart';
import 'package:junaediakbar_app/app/config/app_buttons.dart';

import 'package:junaediakbar_app/app/config/app_text_styles.dart';
import 'package:junaediakbar_app/app/modules/home/views/contents/project_section.dart';
import 'package:junaediakbar_app/app/modules/home/views/contents/skill_section.dart';
import 'package:junaediakbar_app/app/modules/home/views/navbar.dart';
import 'package:junaediakbar_app/app/modules/home/views/sosmed_icons.dart';
import 'package:junaediakbar_app/app/modules/home/views/tab_nav.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../controllers/home_controller.dart';
import 'contents/hero_section.dart';

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
          iconData: Icons.phone, color: AppColors.bluePrimary, text: 'Phone');
    } else if (screen.isDesktop) {
      return renderWidget(
          iconData: Icons.desktop_windows,
          color: AppColors.bluePrimary,
          text: 'Desktop');
    } else if (screen.isTablet) {
      return renderWidget(
          iconData: Icons.tablet, color: AppColors.bluePrimary, text: 'Tablet');
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
    return Container(
      color: AppColors.bluePrimary,
      child: Column(
        children: [
          navbar(screen),
          Container(
            height: screen.height * 0.9,
            width: double.infinity,
            color: color,
            child: Stack(
              children: [
                Positioned(
                  top: 96,
                  left: 64,
                  child: Image.asset('assets/img/shape-bg-2.png',
                      height: 104, fit: BoxFit.fill),
                ),
                Positioned(
                  bottom: 24,
                  right: 96,
                  child: Image.asset(
                    'assets/img/shape-bg.png',
                  ),
                ),
                Row(
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
                        padding: EdgeInsets.symmetric(
                            vertical: screen.height * 0.05),
                        width: screen.width * 0.7,
                        child: ScrollablePositionedList.builder(
                            itemCount: 5,
                            itemScrollController: controller.scrollableC,
                            itemBuilder: (
                              context,
                              index,
                            ) {
                              return Column(
                                children: [
                                  if (index == 0) HeroSection(),
                                  if (index == 1)
                                    SizedBox(
                                      height: 36,
                                    ),
                                  if (index == 2) ProjectSection(),
                                  if (index == 3)
                                    SizedBox(
                                      height: 36,
                                    ),
                                  if (index == 4) SkillSection(),
                                ],
                              );
                            }),

                        // ListView(
                        //   children: [
                        //     HeroSection(),
                        // SizedBox(
                        //   height: 36,
                        // ),
                        //     ClipRRect(
                        //       borderRadius: BorderRadius.circular(12),
                        //       child: Container(
                        //         height: screen.height * 0.80,
                        //         color: AppColors.white,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       height: 36,
                        //     ),
                        //     ClipRRect(
                        //       borderRadius: BorderRadius.circular(12),
                        //       child: Container(
                        //         height: screen.height * 0.80,
                        //         color: AppColors.blueSecondary,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TabNav(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
