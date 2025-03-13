import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyAppBrowser extends StatefulWidget {
  const MyAppBrowser({super.key});

  @override
  State<MyAppBrowser> createState() => _MyAppBrowserState();
}

class _MyAppBrowserState extends State<MyAppBrowser> {
  final settings = InAppBrowserClassSettings(
    browserSettings: InAppBrowserSettings(
      hideUrlBar: true, // Hides the URL bar
      hideTitleBar: true, // Hides the title bar
      hideToolbarTop: true, // Hides the top toolbar
    ),
    webViewSettings: InAppWebViewSettings(
      javaScriptEnabled: true,
      isInspectable: true,
      // Keep debugging enabled even in release mode for now
      domStorageEnabled: true,
      // Required for loading some web pages
      allowFileAccess: true,
      allowContentAccess: true,
      useWideViewPort: true,
      supportMultipleWindows: true,
    ),
  );

  void openInAppBrowser(BuildContext context) async {
    const String pdfUrl = "https://www.aeee.in/wp-content/uploads/2020/08/Sample-pdf.pdf";
    const String googleDocsUrl = "https://docs.google.com/gview?embedded=true&url=$pdfUrl";
    final browser = InAppBrowser();
    await browser.openUrlRequest(
      urlRequest: URLRequest(url: WebUri(googleDocsUrl)),
      settings: settings,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InAppBrowser Example'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              openInAppBrowser(context);
            },
            child: const Text("Open InAppBrowser")),
      ),
    );
  }
}
