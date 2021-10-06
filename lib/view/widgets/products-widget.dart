import 'package:carousel_slider/carousel_slider.dart';
import 'package:charachters_app/view-model/home-view-model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item-widget.dart';

class ProductsWidgets extends GetWidget<HomeViewModel> {
  const ProductsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.5,
          viewportFraction: 0.8,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
        ),
        items: controller.items.map((item) {
          return Builder(
            builder: (BuildContext context) {
              return ItemWidget(item: item);
            },
          );
        }).toList(),
      ),
    );
  }
}
