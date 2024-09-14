import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingWidget extends StatelessWidget {
  final double rating;
  final int totalRatings;

  const RatingWidget({
    super.key,
    required this.rating,
    required this.totalRatings,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber),
        Text(
          '$rating ($totalRatings)',
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white, // يمكنك تغيير لون النص
          ),
        ),
      ],
    );
  }
}
