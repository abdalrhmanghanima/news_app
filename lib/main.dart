import 'package:flutter/material.dart';
import 'package:news/core/routes/app_router.dart';
import 'package:news/core/routes/page_routes.dart';
import 'package:provider/provider.dart';

import 'modelus/home/view/theme_provider.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: PageRoutesName.initial,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,

      themeMode: themeProvider.getThemeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}

