import 'package:club_app/screen/clubbarshop_screen.dart';
import 'package:club_app/screen/myBottel_screen.dart';
import 'package:club_app/utilites/appcolors.dart';
import 'package:club_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  void changeIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          sidemenuBar(
            context: context,
            onTapArrow: () {},
            onTapItem: (index) {
              changeIndex(index);
            },
            selectedIndex: selectedIndex,
          ),
          Expanded(
            child: Container(
              color: AppColors.blackColor,
              child: selectedIndex == 0
                  ? const ClubbarshopScreen()
                  : selectedIndex == 1
                      ? const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              TextWidget(
                                text: "Screen 2",
                                color: AppColors.whiteColor,
                                fontSize: 20,
                              )
                            ])
                      : selectedIndex == 2
                          ? const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  TextWidget(
                                    text: "Screen 3",
                                    color: AppColors.whiteColor,
                                    fontSize: 20,
                                  )
                                ])
                          : selectedIndex == 3
                              ? const MyBottleScreen()
                              : const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      TextWidget(
                                        text: "Screen 5",
                                        color: AppColors.whiteColor,
                                        fontSize: 20,
                                      )
                                    ]),
            ),
          )
        ],
      ),
    );
  }
}

Widget sidemenuBar({
  required BuildContext context,
  required Function onTapArrow,
  required Function(int) onTapItem,
  required int selectedIndex,
  bool isArrowTaped = false,
}) {
  return Container(
    color: AppColors.redColor,
    child: Padding(
      padding: isArrowTaped
          ? const EdgeInsets.only(left: 8, right: 8)
          : const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => onTapArrow(),
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: AppColors.whiteColor,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 15,
                        color: AppColors.blackColor)
                  ]),
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: AppColors.redColor,
                size: isArrowTaped ? 10 : 20,
              ),
            ),
          ),
          isArrowTaped
              ? Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: 2,
                        color: AppColors.greyColor,
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: SizedBox(
                    height: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () => onTapItem(0),
                          child: Icon(
                            Icons.local_bar_sharp,
                            color: selectedIndex == 0
                                ? AppColors.whiteColor
                                : AppColors.lightgreyColor,
                            size: 22,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => onTapItem(1),
                          child: Icon(
                            Icons.analytics_rounded,
                            color: selectedIndex == 1
                                ? AppColors.whiteColor
                                : AppColors.lightgreyColor,
                            size: 22,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => onTapItem(2),
                          child: Icon(
                            Icons.file_open,
                            color: selectedIndex == 2
                                ? AppColors.whiteColor
                                : AppColors.lightgreyColor,
                            size: 22,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => onTapItem(3),
                          child: Icon(
                            Icons.wine_bar_outlined,
                            color: selectedIndex == 3
                                ? AppColors.whiteColor
                                : AppColors.lightgreyColor,
                            size: 22,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => onTapItem(4),
                          child: Icon(
                            Icons.person,
                            color: selectedIndex == 4
                                ? AppColors.whiteColor
                                : AppColors.lightgreyColor,
                            size: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "____",
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: AppColors.lightgreyColor,
                          size: 22,
                        ),
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Icon(
                              Icons.notifications,
                              color: AppColors.lightgreyColor,
                              size: 22,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 12,
                              width: 12,
                              decoration: const BoxDecoration(
                                  color: AppColors.lightwhiteColor,
                                  shape: BoxShape.circle),
                              child: const TextWidget(
                                text: "2",
                                color: AppColors.redColor,
                                fontSize: 6,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    ),
  );
}
