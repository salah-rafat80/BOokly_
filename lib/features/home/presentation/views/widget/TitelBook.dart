import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitelBook extends StatelessWidget {
  const TitelBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "The Jungle Book",
        style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w400),
      ),
    );
  }
}
