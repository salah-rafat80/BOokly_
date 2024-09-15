import 'package:bookly/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contenarimage extends StatelessWidget {
  const Contenarimage({super.key, required this.bookImage});
  final String bookImage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 162.w,
        height: 243.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image:
              DecorationImage(image: NetworkImage(bookImage), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
