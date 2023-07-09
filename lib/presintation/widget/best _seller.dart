
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/presintation/widget/myTitle.dart';

class best_seller extends StatelessWidget {
  const best_seller({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.0, right:5.0),
      width: 218.w,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 170.w,
                height: 70.h,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myTitle(
                          title: name,
                          size: 12.sp,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          myTitle(
                              title: '4.0',
                              size: 10.sp,
                              color: Colors.black45,
                              fontWeight: FontWeight.normal),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15.sp,
                                color: Colors.deepOrange,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.sp,
                                color: Colors.deepOrange,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.sp,
                                color: Colors.deepOrange,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.sp,
                                color: Colors.deepOrange,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.sp,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          myTitle(
                              title: '(120+)',
                              size: 10.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          SizedBox(
                            width: 5.w,
                          ),
                          Row(
                            children: [
                              myTitle(
                                  title: price,
                                  size: 13.sp,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
