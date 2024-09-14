import 'package:bookly/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Imagecontener extends StatelessWidget {
  const Imagecontener({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 105.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(image: AssetImage(TestImage))),
    );
  }
}
