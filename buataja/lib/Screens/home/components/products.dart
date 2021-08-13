import 'package:buataja/Screens/home/components/product_desc.dart';
import 'package:buataja/Screens/home/components/product_desc2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../models/ProductModel.dart';

class Products extends StatelessWidget {
  const Products({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding * 0.8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              demoProducts.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(right: kDefaultPadding * 0.8),
                  child: SizedBox(
                    width: 198,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(proDesc());
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            demoProducts[index].image,
                            width: 198,
                            height: 270,
                          ),
                          SizedBox(height: 20),
                          Text(
                            demoProducts[index].name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(children: [
                                  buildWidgetSpan("\Rp. "),
                                  TextSpan(
                                    text: demoProducts[index]
                                        .price
                                        .toString()
                                        .split('.')[0],
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => proDesc()));
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              kPrimaryColor.withOpacity(0.1))),
                                  padding:
                                      EdgeInsets.all(kDefaultPadding * 0.1),
                                  child: SvgPicture.asset(
                                      'assets/icons/heart.svg'),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  WidgetSpan buildWidgetSpan(text) {
    return WidgetSpan(
      child: Transform.translate(
        offset: const Offset(0.0, -7.0),
        child: Text(text,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 12,
            )),
      ),
    );
  }
}
