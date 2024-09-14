import 'package:bookly/core/Network/get_it.dart';
import 'package:bookly/features/home/data/repo/home_repo_implement.dart';
import 'package:bookly/features/home/presentation/controller/allbooks_cubit/allbooks_cubit.dart';
import 'package:bookly/features/home/presentation/controller/newsbooks_cubit/newsbooks_cubit.dart';
import 'package:bookly/features/home/presentation/views/details_book.dart';
import 'package:bookly/features/home/presentation/views/home_screen.dart';
import 'package:bookly/features/splash/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                AllbooksCubit(getIt.get<HomeRepoImplement>())..getAllBooks(),
          ),
          BlocProvider(
            create: (context) =>
                NewsbooksCubit(getIt.get<HomeRepoImplement>())..getNewsBooks(),
          )
        ],
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          // Use builder only if you need to use library outside ScreenUtilInit context
          builder: (_, child) {
            return MaterialApp(
              routes: {
                "homeScreen": (context) => const HomeScreen(),
                "Book": (context) => const DetailsBook(),
              },
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark()
                  .copyWith(scaffoldBackgroundColor: const Color(0xff100B20)),
              home: child,
            );
          },
          child: const SplashScreen(),
        ));
  }
}
