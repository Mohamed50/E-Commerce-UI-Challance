import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:charachters_app/data/item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../details.dart';
import 'clipper-card.dart';
import 'custom-text.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => DetailsPage(item: item));
      },
      child: Stack(
        alignment: Alignment.centerRight,
        clipBehavior: Clip.none,
        children: [
          Hero(
            tag: 'background ${item.images}',
            child: GradientCard(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              borderRadius: BorderRadius.circular(32.0),
              colors: item.colors,
              child: Container(),
            ),
          ),
          Positioned(
            right: -30.0,
            child: Hero(
              tag: 'image ${item.images}',
            child: Transform.rotate(
              angle: -pi * 30 / 180,
                child: CachedNetworkImage(
                  height: 400.0,
                  width: 300,
                  imageUrl: item.images.first,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 32.0, horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        item.brand,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 24.0,
                      ),
                      Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: CustomText(
                      item.name,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0,
                    ),
                  ),
                  CustomText(
                    "${item.price} \$",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
