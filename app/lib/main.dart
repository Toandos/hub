import 'package:flutter/material.dart';
import 'package:hub/models/service.dart';
import 'package:hub/pages/dashboard_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toando Hub',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const DashboardPage(services: [
        Service(name: "hosting", url: "https://hosting.toando.de")
      ],),
    );
  }
}
