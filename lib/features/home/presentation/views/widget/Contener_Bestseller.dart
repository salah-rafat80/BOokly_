import 'package:bookly/core/Rating.dart';
import 'package:bookly/features/home/presentation/views/widget/ImageContener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContenerBestSeller extends StatelessWidget {
  const ContenerBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      width: 298.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Imagecontener(),
          SizedBox(
            width: 15.w,
          ),
          SizedBox(
            width: 198.w,
            height: 94.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Jungle Book",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                ),
                Text(
                  "The Jungle Book",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 €",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    const RatingWidget(
                      rating: 4.8,
                      totalRatings: 2390,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
