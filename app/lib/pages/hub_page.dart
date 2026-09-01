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
        child: Column(
          mainAxisAlignment: .center,
          children: [
              for(final service in widget.services)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ServicePage(service: service)));
                  },
                  child: Text(service.name)
                )
          ],
        ),
      ),
    );
  }
}
