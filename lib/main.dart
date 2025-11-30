import 'package:flutter/material.dart';
import 'package:news/presentation/home_screen/home_screen.dart';
import 'package:news/presentation/news_screen/news_screen.dart';
import 'package:news/presentation/news_screen/providers/theme_provider.dart';
import 'package:news/presentation/resources/app_theme.dart';
import 'package:provider/provider.dart';
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
        NewsScreen.routeName: (context)=> NewsScreen(),
        HomeScreen.routeName: (context)=> HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}