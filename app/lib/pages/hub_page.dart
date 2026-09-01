import 'package:flutter/material.dart';

import 'service_page.dart';
import '../models/service.dart';

class HubPage extends StatefulWidget {
  const HubPage({ super.key, required this.services });

  final List<Service> services;

  @override
  State<HubPage> createState() => _HubPageState();
}

class _HubPageState extends State<HubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hub"),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120,
            mainAxisExtent: 120,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16
          ),
          itemCount: widget.services.length,
          itemBuilder: (context, index) {
            final service = widget.services[index];

            return FilledButton.tonal(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ServicePage(service: service)));
              },
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(service.symbol, size: 50),
                  Text(service.name)
                ]
              )
            );
          },
        ),
      ),
    );
  }
}
