import 'package:bookly/features/home/data/Model/books/volume_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookPoster extends StatelessWidget {
  const BookPoster({super.key, required this.Info});
  final VolumeInfo Info;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, "Book");
        },
        child: Container(
          width: 150.w,
          height: 224.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(Info.imageLinks!.smallThumbnail!))),
        ),
      ),
    ]);
  }
}
