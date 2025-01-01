import 'package:flutter/material.dart';
import 'screens/image_loader.dart';
import 'screens/font_switcher.dart';
import 'screens/json_list_view.dart';
import 'screens/asset_switcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Asset Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Asset Demo')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Load Image from Assets and URL'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ImageLoader()),
            ),
          ),
          ListTile(
            title: const Text('Switch Fonts (Local & Google Fonts)'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FontSwitcher()),
            ),
          ),
          ListTile(
            title: const Text('Display JSON in ListView'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const JsonListView()),
            ),
          ),
          ListTile(
            title: const Text('Switch Between Asset Sets'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AssetSwitcher()),
            ),
          ),
        ],
      ),
    );
  }
}