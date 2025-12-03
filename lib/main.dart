import 'package:flutter/material.dart';
import 'package:news/presentation/category_screen/category_view.dart';
import 'package:news/presentation/home/home_screen.dart';
import 'package:news/presentation/news_screen/news_view.dart';
import 'package:news/presentation/splash/pages/splash_view.dart';
import 'package:provider/provider.dart';

import 'core/providers/theme_provider.dart';
import 'core/resources/app_const/app_routes.dart';
import 'core/resources/app_const/app_theme.dart';
void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=> ThemeProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider= Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.getThemeMode,
      routes: {
        AppRoutes.home: (context)=> HomeScreen(),
        AppRoutes.initial: (context)=> SplashView(),
      },
      initialRoute: AppRoutes.initial,
    );
  }
}