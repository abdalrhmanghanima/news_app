import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatefulWidget {
  final String url;
  const ArticleWebView({super.key, required this.url});

  @override
  State<ArticleWebView> createState() => _ArticleWebViewState();
}

class _ArticleWebViewState extends State<ArticleWebView> {
  late final WebViewController controller;
  bool loading = true;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) {
            setState(() => loading = false);
            _applyDarkModeFilter();
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  void _applyDarkModeFilter() {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    final js = """
      if ($isDark) {
        document.documentElement.style.filter = "invert(1) hue-rotate(180deg)";
        document.body.style.backgroundColor = "black";
      } else {
        document.documentElement.style.filter = "invert(0)";
        document.body.style.backgroundColor = "white";
      }
    """;

    controller.runJavaScript(js);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Article")),
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          if (loading)
            Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
