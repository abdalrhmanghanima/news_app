import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/theme_provider.dart';
class CustomScaffold extends StatelessWidget {
  const CustomScaffold(this.onHomeClick,{
    super.key,
    required this.title,
    this.actions,
    required this.body,
  });
  final String title;
  final List<Widget>? actions;
  final Widget body;
  final VoidCallback onHomeClick;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: actions,
        scrolledUnderElevation: 0,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Center(child: Text('News App'))),
            ListTile(
              onTap: () {
                onHomeClick();
                Navigator.pop(context);
              },
              title: Text('Go To Home'),
              leading: Icon(CupertinoIcons.home),
            ),
            Divider(),
            ListTile(
              onTap: () {
                themeProvider.setThemeMode = themeProvider.isDarkMode
                    ? ThemeMode.light
                    : ThemeMode.dark;
              },
              leading: Icon(themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode),
              title: Text(themeProvider.isDarkMode ? 'Dark' : 'Light'),
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
