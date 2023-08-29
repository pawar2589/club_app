import 'package:club_app/models/product_model.dart';
import 'package:club_app/utilites/appcolors.dart';
import 'package:flutter/material.dart';

class GridviewContainerWidget extends StatelessWidget {
  const GridviewContainerWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.lightblackColor,
              borderRadius: BorderRadius.circular(4)),
          child: Stack(
            children: [
              ClipOval(
                clipper: BottomRightCurveClipper(),
                child: Container(
                  color: AppColors.blackColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.greyColor,
                        image: DecorationImage(
                            image: AssetImage(prod[index].assetImage)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      prod[index].title,
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.whiteColor),
                    ),
                    Row(
                      children: [
                        const Text(
                          "Size :",
                          style: TextStyle(
                              fontSize: 12, color: AppColors.whiteColor),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 3),
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              color: AppColors.greyColor,
                              borderRadius: BorderRadius.circular(3)),
                          child: const Text(
                            "1L",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 9),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.blackColor,
                                  blurRadius: 5,
                                )
                              ],
                              color: AppColors.greyColor,
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            prod[index].size,
                            style: const TextStyle(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 9),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: AppColors.greyColor,
                              shape: BoxShape.circle),
                          child: const Text(
                            "J",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          prod[index].brand,
                          style: TextStyle(
                              color: AppColors.lightgreyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "\u{20B9} ${prod[index].price}",
                      style: const TextStyle(
                          color: AppColors.lightwhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: -0,
          right: 1,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: AppColors.redColor,
            child: Icon(
              Icons.shopping_cart,
              color: AppColors.whiteColor,
              size: 16,
            ),
          ),
        )
      ],
    );
  }
}

class BottomRightCurveClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
      center: Offset(size.width - 15, size.height - 14),
      radius: 22,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
