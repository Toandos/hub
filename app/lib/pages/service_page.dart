import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../models/service.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key, required this.service});

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(service.url),
        ),
      ),
    );
  }
}