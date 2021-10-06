import 'package:charachters_app/view-model/home-view-model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:get/get.dart';
import 'clipper-card.dart';
import 'custom-text.dart';

class CategoriesList extends GetWidget<HomeViewModel> {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 1,
      child: Obx(
            () =>
            ListView.separated(
              padding: EdgeInsets.all(16.0),
              scrollDirection: Axis.horizontal,
              itemCount: controller.categories.length,
              itemBuilder: (context, index) =>
                  InkWell(
                    onTap: () {
                      controller.selectCategory(index);
                    },
                    child: GradientCard(
                      colors: controller.selectedCategory == index
                          ? GradientColors.colorfulPeach
                          : GradientColors.lightBlack,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      borderRadius: BorderRadius.circular(8.0),
                      child: CustomText(
                        controller.categories[index].name!,
                        color: controller.selectedCategory == index
                            ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) =>
                  SizedBox(
                    width: 8.0,
                  ),
            ),
      ),
    );
  }
}
