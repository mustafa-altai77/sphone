import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/presintation/screen/screen_Details.dart';
import 'package:store/presintation/widget/myTitle.dart';

class top_offers extends StatelessWidget {
  const top_offers({
    super.key,
    required this.image,
    required this.name,
    required this.rait,
    required this.price,
  });

  final String image;
  final String name;
  final double rait;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ScreenDetails()));
          },
          child: Container(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(50)
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      width: 100.w,
                      height: 130.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(image))),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myTitle(
                          title: name,
                          size: 12.sp,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 10.h,
                      ),
                      myTitle(
                          title: 'Rating',
                          size: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      SizedBox(
                        height: 15.h,
                      ),
                      RatingBar.builder(
                        initialRating: rait,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 15.sp,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      myTitle(
                          title: price,
                          size: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 33.r,
            height: 33.r,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              child: Icon(
                Icons.shopping_cart,
                size: 18.sp,
                color: Colors.white,
              ),
            ),
          ),
        ),
        rait == 4.5
            ? Positioned(
                top: 10,
                left: 10,
                width: 40.w,
                height: 20.h,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: 30.r,
                  height: 30.r,
                  child: myTitle(
                      title: 'new',
                      size: 10.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              )
            : Container(),
      ],
    );
  }
}
