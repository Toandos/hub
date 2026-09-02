import 'package:flutter/material.dart';
import 'package:hub/models/service.dart';
import 'package:hub/pages/service_page.dart';
import 'package:material_symbols_icons/symbols.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({ super.key, required this.title });

  final String title;

  static final Service _accountsService = const Service(
    name: "Accounts",
    symbol: Symbols.account_circle,
    url: "https://accounts.toando.de"
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      actions: [
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ServicePage(
              service: Header._accountsService
            )));
          },
          icon: const Icon(Symbols.no_accounts),
          label: const Text("Guest"),
        )
      ],
    );
  }
}