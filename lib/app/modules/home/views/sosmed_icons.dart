import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../controllers/home_controller.dart';

class SosmedIcons extends GetResponsiveView<HomeController> {
  @override
  Widget builder() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade900,
        borderRadius: BorderRadius.circular(50),
      ),
      height: 182,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/img/icon_yt.svg',
                semanticsLabel: 'Acme Logo'),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/img/icon_twitter.svg',
                semanticsLabel: 'Acme Logo'),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/img/icon_fb.svg',
                semanticsLabel: 'Acme Logo'),
          ),
        ],
      ),
    );
  }
}
