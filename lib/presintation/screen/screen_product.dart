import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/constants/constants.dart';
import 'package:store/presintation/widget/myTitle.dart';
import 'package:store/presintation/widget/search.dart';
import 'package:store/presintation/widget/section_item.dart';
import 'package:store/presintation/widget/top_offers.dart';

import '../widget/best _seller.dart';

class ScreenProduct extends StatelessWidget {
  List icon = [
    Icons.camera_alt,
    Icons.laptop,
    Icons.phone_android_sharp,
    Icons.watch,
    Icons.tab,
    Icons.account_balance_wallet_outlined
  ];
  List title = ['Camera', 'Laptop', 'Phone', 'Smart Watch', 'Tab', 'Acssesori'];
  List image = [
    'assets/images/lab.jpg',
    'assets/images/s23.jpg',
    'assets/images/cammera.jpg',
    'assets/images/smart.jpg'
  ];
  List nameP = [
    'Microsoft Surface Laptop',
    'Samsung Galaxy S23',
    'Canon EOS 4000D DSLR',
    'New Apple Watch SE'
  ];
  List price = ['11,000 AED', '04,000 AED', '05,300 AED', '1000 AED'];
  List rait = [4.5, 5.0, 3.5, 2.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myTitle(
                    title: export,
                    size: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                const search(),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 80.h,
                  child: ListView.builder(
                      itemCount: icon.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return section_item(
                            icon: icon[index], title: title[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 10.0),
                  child: myTitle(
                      title: bestSeller,
                      size: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 140.h,
                  child: ListView.builder(
                      itemCount: image.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return best_seller(
                            image: image[index],
                            name: nameP[index],
                            price: price[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 10.0),
                  child: myTitle(
                      title: topOffers,
                      size: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 300.h,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: image.length,
                      itemBuilder: (context, index) {
                        return top_offers(image: image[index], name: nameP[index], rait: rait[index], price: price[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
