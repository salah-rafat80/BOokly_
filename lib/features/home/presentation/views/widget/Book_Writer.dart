import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookWriter extends StatelessWidget {
  const BookWriter({super.key, required this.writerName});
  final String writerName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        writerName,
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}
