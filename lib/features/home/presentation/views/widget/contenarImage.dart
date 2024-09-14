import 'package:bookly/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contenarimage extends StatelessWidget {
  const Contenarimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 162.w,
        height: 243.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(image: AssetImage(TestImage)),
        ),
      ),
    );
  }
}
