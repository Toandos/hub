import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hub/layout/header.dart';
import '../models/service.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key, required this.service});

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: service.name),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(service.url),
        ),
      ),
    );
  }
}