import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../../../config/app_buttons.dart';
import '../../../config/app_text_styles.dart';
import '../controllers/home_controller.dart';

class TabNav extends GetResponsiveView<HomeController> {
  @override
  Widget builder() {
    return Container(
      width: 144,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset('assets/img/icon_home.svg'),
            label: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Home',
                style: AppTextStyles.heading1,
              ),
            ),
            style: AppButton.buttonTab,
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset('assets/img/icon_project.svg'),
            label: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Project',
                style: AppTextStyles.heading1,
              ),
            ),
            style: AppButton.buttonTab,
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset('assets/img/icon_message.svg'),
            label: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Contact',
                style: AppTextStyles.heading1,
              ),
            ),
            style: AppButton.buttonTab,
          ),
        ],
      ),
    );
  }
}
