import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:junaediakbar_app/app/config/app_colors.dart';

import '../../../config/app_buttons.dart';
import '../../../config/app_decorations.dart';
import '../../../config/app_text_styles.dart';
import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class TabNav extends StatelessWidget {
  HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: AppDecorations.shadowTab,
            child: ElevatedButton.icon(
              onPressed: () async {
                await controller.scrollToIndex(0);
              },
              icon: SvgPicture.asset('assets/img/icon_home.svg'),
              label: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Obx(() => controller.showedIndex == 0
                    ? Text(
                        'Home',
                        style: AppTextStyles.tabTitle,
                      )
                    : Text(
                        '',
                        style: AppTextStyles.tabTitle,
                      )),
              ),
              style: AppButton.buttonTab,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            decoration: AppDecorations.shadowTab,
            child: ElevatedButton.icon(
              onPressed: () async {
                await controller.scrollToIndex(2);
              },
              icon: SvgPicture.asset('assets/img/icon_project.svg'),
              label: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Obx(() => controller.showedIndex == 2
                    ? Text(
                        'Project',
                        style: AppTextStyles.tabTitle,
                      )
                    : Text(
                        '',
                        style: AppTextStyles.tabTitle,
                      )),
              ),
              style: AppButton.buttonTab,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            decoration: AppDecorations.shadowTab,
            child: ElevatedButton.icon(
              onPressed: () async {
                await controller.scrollToIndex(4);
              },
              icon: SvgPicture.asset('assets/img/icon_message.svg'),
              label: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Obx(() => controller.showedIndex == 4
                    ? Text(
                        'Contact',
                        style: AppTextStyles.tabTitle,
                      )
                    : Text(
                        '',
                        style: AppTextStyles.tabTitle,
                      )),
              ),
              style: AppButton.buttonTab,
            ),
          ),
        ],
      ),
    );
  }
}
