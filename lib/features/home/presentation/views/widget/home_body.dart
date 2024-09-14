import 'package:bookly/core/List_books.dart';
import 'package:bookly/core/constant.dart';
import 'package:bookly/features/home/presentation/views/widget/List_BestSeller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext conte0xt) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  logo,
                  height: 16.11.h,
                  width: 75.w,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 260.h,
          child: const ListBooks(),
        )),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 40.h,
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w),
            child: SizedBox(
                width: 101.w,
                height: 22.h,
                child: Text(
                  "Best Seller",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18.sp),
                )),
          ),
        ),
        const ListBestseller()
      ],
    );
  }
}
