import 'package:webview_flutter/webview_flutter.dart';

import '../../../core.dart';

class AppWebViewArgs {
  const AppWebViewArgs({required this.title, required this.url});

  final String title;
  final String url;
}

class AppWebViewScreen extends StatefulWidget {
  const AppWebViewScreen({super.key, required this.title, required this.url});

  final String title;
  final String url;

  @override
  State<AppWebViewScreen> createState() => _AppWebViewScreenState();
}

class _AppWebViewScreenState extends State<AppWebViewScreen> {
  WebViewController? _controller;
  String? _error;

  @override
  void initState() {
    super.initState();
    final uri = Uri.tryParse(widget.url.trim());
    if (uri == null || !uri.hasScheme || uri.host.isEmpty) {
      _error = 'This page is not available.';
      return;
    }
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (_) {
            if (mounted) setState(() => _error = 'Unable to load this page.');
          },
        ),
      )
      ..loadRequest(uri);
  }

  @override
  Widget build(BuildContext context) => AppScaffold(
    padding: EdgeInsets.zero,
    appBar: AppBar(title: Text(widget.title)),
    body: _error != null
        ? Center(child: Text(_error!))
        : WebViewWidget(controller: _controller!),
  );
}
