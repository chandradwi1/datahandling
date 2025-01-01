import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JsonListView extends StatelessWidget {
  const JsonListView({super.key});

  Future<List<String>> _loadJson() async {
    final data = await rootBundle.loadString('assets/data.json');
    final parsed = json.decode(data) as List<dynamic>;
    return parsed.map((e) => e.toString()).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JSON ListView')),
      body: FutureBuilder<List<String>>(
        future: _loadJson(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(snapshot.data![index]));
              },
            );
          }
        },
      ),
    );
  }
}