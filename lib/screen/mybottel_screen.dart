import 'package:club_app/utilites/appcolors.dart';
import 'package:club_app/widgets/myBottleListcontainer_widget.dart';
import 'package:flutter/material.dart';

class MyBottleScreen extends StatelessWidget {
  const MyBottleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 53,
            left: 14,
          ),
          child: Text(
            "My Bottle",
            style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return MybottelListContainerWidget(
                  index: index,
                );
              }),
        )
      ],
    );
  }
}
