import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeController

  ItemScrollController scrollableC = ItemScrollController();
  RxInt showedIndex = 0.obs;

  late AnimationController animationC = AnimationController(vsync: this);

  Future scrollToIndex(int index) async {
    await scrollableC.scrollTo(
        index: index,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut);
    showedIndex.value = index;
  }
}
