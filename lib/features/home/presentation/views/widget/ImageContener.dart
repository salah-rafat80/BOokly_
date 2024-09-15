import 'package:bookly/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Imagecontener extends StatelessWidget {
  const Imagecontener({super.key, required this.BookImage});
  final String BookImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 105.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          image: DecorationImage(
              image: NetworkImage(BookImage), fit: BoxFit.fill)),
    );
  }
}
