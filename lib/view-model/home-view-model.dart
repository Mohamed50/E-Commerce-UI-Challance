import 'package:charachters_app/data/category.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:get/get.dart';
import '../data/item.dart';

class HomeViewModel extends GetxController {
  var _categories = [
    CategoryModel("1", "Life Style", ""),
    CategoryModel("2", "Running", ""),
    CategoryModel("3", "Jordan", ""),
    CategoryModel("4", "Basketball", ""),
    CategoryModel("5", "walking", ""),
  ].obs;

  List<CategoryModel> get categories => _categories;

  var _items = [
    Item(
      [
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633451482/kim-jones-air-max-95-shoe-Pnm3zx-removebg-preview_rrjdqo.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633523724/kim-jones-air-max-95-shoe-Pnm3zx-removebg-preview_1_rofx2r.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633523725/kim-jones-air-max-95-shoe-Pnm3zx-removebg-preview_3_dqpm0r.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633523724/kim-jones-air-max-95-shoe-Pnm3zx-removebg-preview_2_m23iye.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633523724/kim-jones-air-max-95-shoe-Pnm3zx-removebg-preview_nmchi6.png",
      ],
      "Jones Air Max 95",
      "Nike x Kim",
      "85",
      "Prolific designer Kim Jones brings his extensive fashion pedigree to one of Nike's most beloved shoes, the Nike x Kim Jones Air Max 95. Taking inspiration from the human body and '90s track aesthetics, it mixes unbelievable comfort with head-turning style. The iconic side panels feature laser-cut perforations in a Morse code-like pattern while bright orange or Volt colored Air units, and eyestays provide pops of color.",
      GradientColors.green,
    ),
    Item(
      [
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633450638/air-vapormax-plus-mens-shoes-nC0dzF-removebg-preview_hkzcuz.png"
      ],
      "Air VaporMax Plus",
      "Nike",
      "110",
      "The Nike Air VaporMax Plus looks to the past to propel you into the future. This revamp nods to the 1998 original with its signature overlays, cushioned upper and heel logo. Revolutionary VaporMax Air technology brings it into today.",
      GradientColors.amour,
    ),
    Item(
      [
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633451284/air-max-plus-mens-shoes-x9G2xF-removebg-preview_yrrx1n.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633523475/air-max-plus-mens-shoes-x9G2xF-removebg-preview_1_zdjtyq.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633523475/air-max-plus-mens-shoes-x9G2xF-removebg-preview_3_bzwrqq.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633523475/air-max-plus-mens-shoes-x9G2xF-removebg-preview_2_jupyzn.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633523475/air-max-plus-mens-shoes-x9G2xF-removebg-preview_x5qndu.png",
      ],
      "Air Max Plus",
      "Nike",
      "65",
      "Give your attitude an edge in your Nike Air Max Plus, a Tuned Air experience that gives you incredible stability and unbelievable cushioning. A prominent arch draws inspiration from a whale's tail and gives it structure, while the iconic plastic fingers nod to palm trees and ocean waves. This version has airy mesh, a fiery gradient overlay and the familiar wavy design lines of the original, bringing that summer heat right to your kicks.",
      GradientColors.amyCrisp,
    ),
    Item(
      [
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633450790/waffle-one-premium-mens-shoes-2Zs0G1-removebg-preview_ytqoot.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633521038/waffle-one-premium-mens-shoes-2Zs0G1-removebg-preview_1_qljpng.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633521038/waffle-one-premium-mens-shoes-2Zs0G1-removebg-preview_4_tsfxqf.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633521038/waffle-one-premium-mens-shoes-2Zs0G1-removebg-preview_3_yeeebw.png",
        "https://res.cloudinary.com/dwvzinqzc/image/upload/v1633521038/waffle-one-premium-mens-shoes-2Zs0G1-removebg-preview_roqtpv.png",
      ],
      "Waffle One Premium",
      "Nike",
      "110",
      "The Nike Waffle One Premium keeps it cozy. Merging classic track aesthetics with a quilted upper and sweater-like liner, it lets you tread calmly and comfortably thorough the chill of winter. Speckles in the rubber outsole are made from Nike Grind—rubber containing at least 11% recycled content. Nike Grind material is made from scraps from the footwear manufacturing process.",
      GradientColors.orange,
    ),
  ].obs;

  List<Item> get items => _items.value;

  RxInt _selectedCategory = 0.obs;
  int get selectedCategory => _selectedCategory.value;

  void selectCategory(int index){
    _selectedCategory.value = index;
  }

}
