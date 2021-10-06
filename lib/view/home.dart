import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:charachters_app/view-model/home-view-model.dart';
import 'package:charachters_app/view/widgets/categories-list.dart';
import 'package:charachters_app/view/widgets/clipper-card.dart';
import 'package:charachters_app/view/widgets/custom-text.dart';
import 'package:charachters_app/view/widgets/item-widget.dart';
import 'package:charachters_app/view/widgets/products-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<HomeViewModel> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.1),
        inactiveColor: Colors.white,
        activeColor: GradientColors.colorfulPeach.first,
        icons: [
          FontAwesomeIcons.home,
          FontAwesomeIcons.shapes,
          FontAwesomeIcons.search,
          FontAwesomeIcons.boxes,
        ],
        activeIndex: 0,
        leftCornerRadius: 8.0,
        rightCornerRadius: 8.0,
        gapLocation: GapLocation.center,
        onTap: (index) {},
        // onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(0.1),
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
      ),
      drawer: Drawer(),
      appBar: AppBar(
        title: CustomText("Shoes", color: Colors.white,),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesList(),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: CustomText(
              "Products",
              fontSize: 28.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          ProductsWidgets(),
          SizedBox(height: 32.0,)
        ],
      ),
    );
  }
}
