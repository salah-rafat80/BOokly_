import 'package:bookly/core/constant.dart';
import 'package:bookly/features/home/presentation/views/widget/Appbar.dart';
import 'package:bookly/features/home/presentation/views/widget/Book_Writer.dart';
import 'package:bookly/features/home/presentation/views/widget/Rate_box.dart';
import 'package:bookly/features/home/presentation/views/widget/TitelBook.dart';
import 'package:bookly/features/home/presentation/views/widget/contenarImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBook extends StatelessWidget {
  const DetailsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Appbar(),
              const SizedBox(
                height: 20,
              ),
              const Contenarimage(),
              SizedBox(
                height: 20.h,
              ),
              const TitelBook(),
              const BookWriter(),
              const RateBox(),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      height: 48.h,
                      width: 150.w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "19.99 €",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 23.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      height: 48.h,
                      width: 150.w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Color(0xffEF8262),
                      ),
                      child: Center(
                        child: Text(
                          "Free preview",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50.sp),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "You can also like",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 70,
                        height: 112,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(TestImage)),
                        ),
                      ),
                    ]);
                  },
                  itemCount: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
