import 'package:flutter/material.dart';
import 'package:news/core/resources/app_const/app_assets.dart';
import 'package:news/core/resources/app_const/app_routes.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3)).then((_) {
        Navigator.pushReplacementNamed(context, AppRoutes.home);
      });
    });

    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      color: isDark ? Colors.black : Colors.white,
      child: Image.asset(AppImages.splashScreen),
    );
  }
}
