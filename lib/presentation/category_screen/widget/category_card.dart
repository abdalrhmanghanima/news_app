import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/theme_provider.dart';
import '../../../data/model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model, required this.index});

  final CategoryModel model;
  final int index;

  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<ThemeProvider>(context).isDarkMode;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            isDark ? model.lightImage : model.darkImage,
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          top: 24,
          right: index.isEven ? 24 : null,
          left: index.isEven ? null : 24,
          child: Text(
            model.title,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        Positioned(
          bottom: 10,
          right: index.isEven ? 10 : null,
          left: index.isEven ? null : 10,
          child: Container(
            width: 169,
            height: 65,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(70),
            ),
            child: Row(
              children: [
                const Text("View All", style: TextStyle(fontSize: 20)),
                const SizedBox(width: 8),
                Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
