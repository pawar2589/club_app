import 'package:club_app/models/product_model.dart';
import 'package:club_app/utilites/appcolors.dart';
import 'package:club_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MybottelListContainerWidget extends StatelessWidget {
  const MybottelListContainerWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightblackColor,
          borderRadius: BorderRadius.circular(4)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.11,
                      decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: AssetImage(prod[index].assetImage))),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Last Consume",
                      style: TextStyle(
                          color: AppColors.lightgreyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 9),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      prod[index].duration,
                      style: const TextStyle(
                          color: AppColors.lightwhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "(30/04/23)",
                      style: TextStyle(
                          color: AppColors.lightgreyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 6),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prod[index].title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: AppColors.lightwhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      "Size",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColors.lightgreyColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.blackColor,
                              blurRadius: 5,
                            )
                          ],
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        prod[index].size,
                        style: const TextStyle(
                            color: AppColors.lightwhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 9),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      "Brand",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColors.lightgreyColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 6),
                          decoration: BoxDecoration(
                              color: AppColors.greyColor,
                              shape: BoxShape.circle),
                          child: const Text(
                            "R",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(prod[index].brand,
                              style: const TextStyle(
                                  color: AppColors.lightwhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 18),
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: AppColors.redColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 10,
                            color: AppColors.lightwhiteColor,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Personal",
                            style: TextStyle(
                                color: AppColors.lightwhiteColor, fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.09,
                      child: CircularPercentIndicator(
                        // fillColor: AppColors.lightblackColor,
                        radius: 30,
                        lineWidth: 3,
                        percent: 0.4,
                        backgroundColor: AppColors.blackColor,
                        backgroundWidth: 2,
                        animation: true,
                        progressColor: AppColors.redColor,
                        center: const Column(
                          children: [
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "05",
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "25ml Packs left",
                              style: TextStyle(
                                  color: AppColors.lightwhiteColor,
                                  fontSize: 5),
                            )
                          ],
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                    ),
                    Text(
                      "Expires in",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColors.lightgreyColor),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "10D",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColors.lightwhiteColor),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextWidget(
                        text: "(Purchase on  : 30/04/23)",
                        color: AppColors.lightgreyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 6)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
