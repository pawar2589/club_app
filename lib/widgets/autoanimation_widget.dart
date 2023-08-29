import 'package:carousel_slider/carousel_slider.dart';
import 'package:club_app/utilites/appcolors.dart';
import 'package:flutter/material.dart';

class AutoanimationWidget extends StatefulWidget {
  const AutoanimationWidget({super.key});

  @override
  State<AutoanimationWidget> createState() => _HomepageState();
}

class _HomepageState extends State<AutoanimationWidget> {
  final List items = [
    AnimationcontainerWidget(
        text: "M'Bride Sisters",
        description:
            "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
        child: Image.asset("assets/images/bridesis.png")),
    AnimationcontainerWidget(
      text: "Campo veij",
      description:
          "Our wine experts think this Napa Valley  wine would be a match made in heaven with these dishes.",
      child: Image.asset("assets/images/wine.png"),
    ),
    AnimationcontainerWidget(
      text: "M'Bride Sisters",
      description:
          "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
      child: Image.asset("assets/images/original.png"),
    ),
  ];

  final CarouselController carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: items.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 2.0,
                      ),
                      child: SizedBox(
                        child: image,
                      ));
                },
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.map((image) {
              int index = items.indexOf(image);
              return Container(
                width: _currentIndex == index ? 30 : 8,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: _currentIndex == index
                      ? AppColors.redColor
                      : AppColors.whiteColor,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class AnimationcontainerWidget extends StatelessWidget {
  const AnimationcontainerWidget(
      {super.key,
      required this.text,
      required this.description,
      required this.child});
  final String text;
  final String description;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightblackColor,
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackColor,
            )
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // "M'Bride Sisters",
                      style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      description,
                      style: const TextStyle(
                          color: AppColors.lightwhiteColor, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.redColor,
                      ),
                      child: const Text(
                        "View",
                        style: TextStyle(
                            color: AppColors.lightwhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120,
            width: 80,
            child: child,
          )
        ],
      ),
    );
  }
}
