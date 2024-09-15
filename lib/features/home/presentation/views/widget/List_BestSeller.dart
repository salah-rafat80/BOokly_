import 'package:bookly/features/home/presentation/controller/allbooks_cubit/allbooks_state.dart';
import 'package:bookly/features/home/presentation/controller/newsbooks_cubit/newsbooks_cubit.dart';
import 'package:bookly/features/home/presentation/controller/newsbooks_cubit/newsbooks_state.dart';
import 'package:bookly/features/home/presentation/views/widget/Contener_Bestseller.dart';
import 'package:bookly/features/home/presentation/views/widget/loding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListBestseller extends StatefulWidget {
  const ListBestseller({super.key});

  @override
  State<ListBestseller> createState() => _ListBestsellerState();
}

class _ListBestsellerState extends State<ListBestseller> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsbooksCubit, NewsbooksState>(
      builder: (context, state) {
        if (state is NewsbooksLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CustomLoadingAnimation(),
            ),
          );
        } else if (state is NewsbooksError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("Error22222222"),
            ),
          );
        } else if (state is NewsbooksLoaded) {
          return SliverList.builder(
            itemBuilder: (context, index) {
              final volumeInfo = state.books?[index].volumeInfo;
              return Padding(
                padding: EdgeInsets.only(
                  left: 25.w,
                  top: 20.h,
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "bestseller_books",
                          arguments: {"volumeInfo": volumeInfo, "stat": state});
                    },
                    child: ContenerBestSeller(
                      Info: volumeInfo,
                    )),
              );
            },
            itemCount: state.books!.length,
          );
        }
        return const SliverToBoxAdapter(
          child: Center(
            child: Text("Error"),
          ),
        );
      },
    );
  }
}
