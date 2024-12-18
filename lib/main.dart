import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_project/Details/MovieDetail/View/Widget/movieDetail_View.dart';
import 'package:movie_project/Shared/Screen/intro_page_screen.dart';
import 'package:movie_project/Shared/Screen/splash_screen.dart';
import 'package:movie_project/Shared/Widget/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        IntroPageScreen.routeName: (_) => const IntroPageScreen(),
        MoviedetailView.routeName: (_) => MoviedetailView(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
