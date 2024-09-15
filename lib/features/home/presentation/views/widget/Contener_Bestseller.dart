import 'package:bookly/core/Rating.dart';
import 'package:bookly/features/home/data/Model/books/volume_info.dart';
import 'package:bookly/features/home/presentation/controller/allbooks_cubit/allbooks_state.dart';
import 'package:bookly/features/home/presentation/controller/newsbooks_cubit/newsbooks_state.dart';
import 'package:bookly/features/home/presentation/views/widget/ImageContener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContenerBestSeller extends StatelessWidget {
  const ContenerBestSeller({super.key, this.Info});
  final VolumeInfo? Info;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      width: 298.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Imagecontener(
            BookImage: Info!.imageLinks!.thumbnail ?? '',
          ),
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
                  Info!.title!,
                  style:
                      TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.w400),
                ),
                Text(
                  Info!.authors?.first ?? "null",
                  style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w500),
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
