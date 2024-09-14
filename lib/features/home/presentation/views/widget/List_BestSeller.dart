import 'package:bookly/features/home/presentation/views/widget/Contener_Bestseller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListBestseller extends StatefulWidget {
  const ListBestseller({super.key});

  @override
  State<ListBestseller> createState() => _ListBestsellerState();
}

class _ListBestsellerState extends State<ListBestseller> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: 25.w,
            top: 20.h,
          ),
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "Book");
              },
              child: const ContenerBestSeller()),
        );
      },
      itemCount: 8,
    );
  }
}
