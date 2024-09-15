import 'package:bookly/features/home/data/Model/books/volume_info.dart';
import 'package:bookly/features/home/presentation/controller/allbooks_cubit/allbooks_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookPoster extends StatelessWidget {
  const BookPoster({super.key, required this.Info, required this.stat});
  final VolumeInfo? Info;
  final AllbooksLoaded stat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "Book",
                arguments: {"volumeInfo": Info, "stat": stat});
          },
          child: Container(
            width: 150.w,
            height: 224.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(Info?.imageLinks?.thumbnail ?? ''))),
          ),
        ),
      ]),
    );
  }
}
