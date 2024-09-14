import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookWriter extends StatelessWidget {
  const BookWriter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "J.K. Rowling",
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}
