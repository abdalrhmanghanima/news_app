import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news/modelus/home/view/theme_provider.dart';

import '../../../core/routes/page_routes.dart';

class CustomDrawer extends StatelessWidget {
  final Function()? onTap;
  const CustomDrawer({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Center(child: Text('News App'))),

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, PageRoutesName.home);
            },
            child: ListTile(
              title: Text('Go To Home'),
              leading: Icon(Icons.home),
            ),
          ),

          Divider(),

          GestureDetector(
            onTap: () {
              final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

              themeProvider.setThemeMode =
              themeProvider.isDarkMode ? ThemeMode.light : ThemeMode.dark;

              Navigator.pop(context);
            },
            child: ListTile(
              title: Text('Change Theme'),
              leading: Icon(Icons.dark_mode),
            ),
          ),


        ],
      ),
    );
  }
}
