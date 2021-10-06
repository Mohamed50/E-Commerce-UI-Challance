import 'package:cached_network_image/cached_network_image.dart';
import 'package:charachters_app/data/item.dart';
import 'package:charachters_app/view-model/product-view-model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'widgets/custom-text.dart';

class DetailsPage extends StatelessWidget {
  final Item item;

  const DetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductViewModel(item));
    return Scaffold(
      body: Stack(
        children: [
          _getBackground(),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              _getHeader(),
              Expanded(
                child: _getBody(),
              ),
            ],
          )
        ],
      ),
    );
  }

  _getBackground() {
    return Hero(
      tag: 'background ${item.images}',
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: item.colors),
        ),
      ),
    );
  }

  _getHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
          ),
          CustomText(
            item.name,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
            letterSpacing: 2.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
              size: 32,
            ),
          )
        ],
      ),
    );
  }

  _getBody() {
    ProductViewModel controller = Get.find<ProductViewModel>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.8,
          child: Hero(
            tag: 'image ${item.images}',
            child: Obx(
              () => CachedNetworkImage(
                imageUrl: item.images[controller.selectedImageIndex],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Spacer(),
        AspectRatio(
          aspectRatio: 5 / 1,
          child: ListView.builder(
            itemCount: item.images.length,
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                controller.selectImage(index);
              },
              child: CachedNetworkImage(imageUrl: item.images[index]),
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 7 / 1,
          child: ListView.builder(
            itemCount: 9,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                controller.selectSize(index);
              },
              child: AspectRatio(
                  aspectRatio: 1.0,
                  child: Obx(
                    () => Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(
                              controller.selectedSizeIndex == index
                                  ? 0.8
                                  : 0.2),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        alignment: Alignment.center,
                        child: CustomText(
                          "${35 + index}",
                          color: controller.selectedSizeIndex == index
                              ? item.colors.first : Colors.white,
                          fontSize: 22.0,
                        )),
                  )),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: CustomText(
            item.description,
            color: Colors.white,
            fontSize: 16.0,
            height: 1.2,
          ),
        ),
        Spacer(),
        _getFooter(),
        SizedBox(height: 24.0),
      ],
    );
  }

  _getFooter() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      margin: EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomText(
              "${item.price} \$",
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: Get.find<ProductViewModel>().addToCart,
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: item.colors,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      FontAwesomeIcons.cartPlus,
                      color: Colors.white,
                    ),
                    CustomText(
                      "Add to cart",
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
