import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:junaediakbar_app/app/config/app_colors.dart';

import '../../controllers/home_controller.dart';

class HeroSection extends GetResponsiveView<HomeController> {
  @override
  Widget builder() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        height: screen.height * 0.80,
        color: AppColors.pinkPrimary,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 76,
                  backgroundColor: AppColors.white,
                  backgroundImage: AssetImage('assets/img/juned-linkedin.png'),
                ),
                Text(
                  'Junaedi Akbar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
