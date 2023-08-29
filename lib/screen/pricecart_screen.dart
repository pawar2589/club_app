import 'package:club_app/models/product_model.dart';
import 'package:club_app/utilites/appcolors.dart';
import 'package:flutter/material.dart';

class ShowPrice extends StatefulWidget {
  const ShowPrice({super.key, this.product});
  final Product? product;
  @override
  State<ShowPrice> createState() => _ShowPriceState();
}

class _ShowPriceState extends State<ShowPrice> {
  int count = 0;
  int? price;
  int? createPrice() {
    String stringWithComma = widget.product?.price ?? "0";

    String cleanedString = stringWithComma.replaceAll(',', '');
    int intValue = int.parse(cleanedString);
    price = intValue * count;

    setState(() {});
    return price;
  }

  void incrementCount() {
    setState(() {
      count++;
    });
    createPrice();
  }

  void decrementCount() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
    createPrice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.10,
              color: AppColors.redColor,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: AppColors.whiteColor,
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    blurRadius: 15,
                                    color: AppColors.blackColor)
                              ]),
                          child: const Icon(
                            Icons.arrow_back_ios_outlined,
                            color: AppColors.redColor,
                            size: 12,
                          )),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 1,
                              color: AppColors.whiteColor,
                              height: MediaQuery.of(context).size.height * 0.4,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                color: AppColors.blackColor,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            height: 270,
                            width: double.infinity,
                            color: AppColors.lightblackColor,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 70, left: 16, right: 16, bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Name",
                                        style: TextStyle(
                                            color: AppColors.lightwhiteColor,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        widget.product?.title ?? "",
                                        style: const TextStyle(
                                            color: AppColors.whiteColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        "Size",
                                        style: TextStyle(
                                            color: AppColors.lightwhiteColor,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 3),
                                            decoration: BoxDecoration(
                                                color: AppColors.greyColor,
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                            child: const Text(
                                              "1L",
                                              style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
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
                                                color: AppColors.redColor,
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                            child: Text(
                                              widget.product?.size ?? "",
                                              style: const TextStyle(
                                                  color:
                                                      AppColors.lightwhiteColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        "Brand",
                                        style: TextStyle(
                                            color: AppColors.lightwhiteColor,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Flexible(
                                        child: Row(
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 3),
                                              decoration: BoxDecoration(
                                                  color: AppColors.greyColor,
                                                  shape: BoxShape.circle),
                                              child: const Text(
                                                "R",
                                                style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Johnny Walker",
                                                style: TextStyle(
                                                    color: AppColors.whiteColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        "Price",
                                        style: TextStyle(
                                            color: AppColors.lightwhiteColor,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        widget.product?.price ?? "",
                                        style: const TextStyle(
                                            color: AppColors.whiteColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 170,
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    // height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: AppColors.greyColor,
                                        image: DecorationImage(

                                            // alignment: Alignment.center,
                                            image: AssetImage(
                                          widget.product?.assetImage ?? "",
                                        ))),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 230, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 90,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightgreyColor,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: AppColors.lightwhiteColor,
                                          width: 1)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          incrementCount();
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(2),
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.blackColor),
                                            child: const Icon(
                                              Icons.add,
                                              color: AppColors.whiteColor,
                                              size: 17,
                                            )),
                                      ),
                                      Text(
                                        ("$count"),
                                        style: const TextStyle(
                                          color: AppColors.whiteColor,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          decrementCount();
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.all(2),
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.blackColor),
                                            child: const Icon(
                                              Icons.remove,
                                              color: AppColors.whiteColor,
                                              size: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "About ${widget.product?.title}",
                                          style: const TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      widget.product?.description ?? "",
                                      style: const TextStyle(
                                        color: AppColors.lightwhiteColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "You may also like",
                                          style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 220,
                                      width: double.infinity,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: prod.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15, top: 22),
                                              child: Container(
                                                width: 150,
                                                color:
                                                    AppColors.lightblackColor,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 45),
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom: 8),
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      prod[index]
                                                                          .assetImage)),
                                                              color: AppColors
                                                                  .greyColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                        Text(
                                                          prod[index].title,
                                                          style: const TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12,
                                                              color: AppColors
                                                                  .whiteColor),
                                                        ),
                                                        const SizedBox(
                                                          height: 4,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "Size :",
                                                              style: TextStyle(
                                                                  // fontWeight: FontWeight.bold,
                                                                  fontSize: 12,
                                                                  color: AppColors
                                                                      .whiteColor),
                                                            ),
                                                            Container(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal: 6,
                                                                  vertical: 3),
                                                              margin: const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 5,
                                                                  horizontal:
                                                                      5),
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .greyColor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3)),
                                                              child: const Text(
                                                                "1L",
                                                                style: TextStyle(
                                                                    color: AppColors
                                                                        .blackColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        9),
                                                              ),
                                                            ),
                                                            Container(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal: 5,
                                                                  vertical: 3),
                                                              decoration: BoxDecoration(
                                                                  boxShadow: const [
                                                                    BoxShadow(
                                                                      color: AppColors
                                                                          .blackColor,
                                                                      blurRadius:
                                                                          5,
                                                                    )
                                                                  ],
                                                                  color: AppColors
                                                                      .greyColor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3)),
                                                              child: const Text(
                                                                "750ml",
                                                                style: TextStyle(
                                                                    color: AppColors
                                                                        .blackColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        9),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 4,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 15,
                                                              width: 15,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .greyColor,
                                                                  shape: BoxShape
                                                                      .circle),
                                                              child: const Text(
                                                                "J",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              prod[index].brand,
                                                              style: const TextStyle(
                                                                  color: AppColors
                                                                      .lightwhiteColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 10),
                                                            )
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 6,
                                                        ),
                                                        Text(
                                                          prod[index].price,
                                                          style: const TextStyle(
                                                              color: AppColors
                                                                  .lightwhiteColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12),
                                                        )
                                                      ]),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: count > 0
            ? BottomAppBar(
                child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: AppColors.lightblackColor,
                  boxShadow: const [
                    BoxShadow(color: AppColors.blackColor, blurRadius: 12)
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 35, right: 35, bottom: 15, top: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Sub Total :",
                              style: TextStyle(
                                  color: AppColors.lightwhiteColor,
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  " \u{20B9} ${price != null ? (price ?? 0 * count).toString() : "0"}",
                                  style: const TextStyle(
                                      color: AppColors.lightwhiteColor,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "(500ml)",
                                      style: TextStyle(
                                          color: AppColors.lightgreyColor,
                                          fontSize: 9),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: AppColors.blackColor,
                                      blurRadius: 12)
                                ],
                                color: AppColors.redColor,
                                borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  color: AppColors.whiteColor,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                      color: AppColors.lightwhiteColor,
                                      fontSize: 15),
                                ),
                              ],
                            ))
                      ]),
                ),
              ))
            : const SizedBox());
  }
}
