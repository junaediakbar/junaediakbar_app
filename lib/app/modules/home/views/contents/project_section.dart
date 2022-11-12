import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../../../../config/app_colors.dart';
import '../../controllers/home_controller.dart';

class ProjectSection extends GetResponsiveView<HomeController> {
  @override
  Widget builder() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: screen.height * 0.80,
        color: AppColors.white,
      ),
    );
  }
}
