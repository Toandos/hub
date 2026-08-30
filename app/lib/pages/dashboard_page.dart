import 'package:flutter/material.dart';

import 'service_page.dart';
import '../models/service.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ super.key, required this.services });

  final List<Service> services;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
