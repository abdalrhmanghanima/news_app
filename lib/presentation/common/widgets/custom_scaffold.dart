import 'package:flutter/material.dart';
import 'package:news/presentation/news_screen/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.title,
    this.actions,
    required this.body,
  });
  final String title;
  final List<Widget>? actions;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true, actions: actions),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Center(child: Text('News App'))),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                title: Text('Go To Home'),
                leading: Icon(Icons.home),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                themeProvider.setThemeMode = themeProvider.isDarkMode
                    ? ThemeMode.light
                    : ThemeMode.dark;
              },
              child: ListTile(
                title: Text(themeProvider.isDarkMode
                    ?'Dark':'Light'),
                leading: Icon(Icons.light_mode),
              ),
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
