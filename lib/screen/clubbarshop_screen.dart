import 'package:club_app/models/product_model.dart';
import 'package:club_app/screen/priceCart_screen.dart';
import 'package:club_app/utilites/appcolors.dart';
import 'package:club_app/widgets/autoAnimation_widget.dart';
import 'package:club_app/widgets/gridviewContainer_widget.dart';
import 'package:club_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ClubbarshopScreen extends StatefulWidget {
  const ClubbarshopScreen({super.key});

  @override
  State<ClubbarshopScreen> createState() => _ClubBarWidgetState();
}

class _ClubBarWidgetState extends State<ClubbarshopScreen> {
  late FocusNode myFocusNode;
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 10),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.blackColor,
            expandedHeight: 260,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                // color: AppColors.redColor,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "New Arrivals",
                      color: AppColors.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                      ),
                      child: AutoanimationWidget(),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                        text: "Products",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors.whiteColor)
                  ],
                ),
              ),
            ),
          ),
          SliverAppBar(
            floating: true,
            expandedHeight: 25,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(0), child: SizedBox()),
            // centerTitle: true,
            flexibleSpace: TextFormField(
              focusNode: myFocusNode,
              decoration: InputDecoration(
                fillColor: AppColors.lightblackColor,
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    bottom: 6,
                    right: 6,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.redColor,
                        borderRadius: BorderRadius.circular(3)),
                    child: const Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintText: "Search anythig...",
                hintStyle: TextStyle(
                    color: AppColors.lightgreyColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.greyColor, width: 1),
                    borderRadius: BorderRadius.circular(5.0)),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: AppColors.greyColor, width: 1),
                ),
              ),
            ),
            backgroundColor: AppColors.blackColor,
            pinned: true,
          ),
          SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                  childAspectRatio: 1 / 1.33,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 15),
              itemCount: prod.length,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ShowPrice(product: prod[index]),
                    ));
                  },
                  child: GridviewContainerWidget(
                    index: index,
                  ),
                );
              })
        ],
      ),
    );
  }
}
