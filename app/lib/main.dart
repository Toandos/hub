import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:hub/models/service.dart';
import 'package:hub/pages/hub_page.dart';

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
      home: const HubPage(services: [
        Service(
          name: "Hosting",
          symbol: Symbols.host,
          url: "https://hosting.toando.de"
        ),
        Service(
          name: "Books",
          symbol: Symbols.book_2,
          url: "https://books.toando.de"
        )
      ]),
    );
  }
}
