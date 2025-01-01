import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DynamicFontApp extends StatelessWidget {
  const DynamicFontApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'LocalFont'), // Font Lokal
        ),
      ),
      home: const FontSwitcher(),
    );
  }
}

class FontSwitcher extends StatefulWidget {
  const FontSwitcher({super.key});

  @override
  FontSwitcherState createState() => FontSwitcherState();
}

class FontSwitcherState extends State<FontSwitcher> {
  bool useGoogleFont = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Font Switcher')),
      body: Column(
        children: [
          Text(
            'Text with dynamic font',
            style: useGoogleFont
                ? GoogleFonts.roboto() // Google Font
                : Theme.of(context).textTheme.bodyMedium,
          ),
          SwitchListTile(
            title: const Text('Use Google Font'),
            value: useGoogleFont,
            onChanged: (value) {
              setState(() {
                useGoogleFont = value;
              });
            },
          ),
        ],
      ),
    );
  }
}