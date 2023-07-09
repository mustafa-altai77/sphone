
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/presintation/widget/myTitle.dart';

class section_item extends StatelessWidget {
  const section_item({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
      child: Column(
        children: [
          Container(
            height: 60.r,
            width: 60.r,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon,size: 40,color: Colors.deepOrange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: myTitle(
                title: title,
                size: 12.sp,
                color: Colors.black54,
                fontWeight: FontWeight.w500),
          ),

        ],
      ),
    );
  }
}
