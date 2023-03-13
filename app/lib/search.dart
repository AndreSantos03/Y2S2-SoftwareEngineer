import 'package:flutter/material.dart';
import 'main.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(),
      ),
      bottomNavigationBar: BottomNavBar(),
      drawer: Drawer(),
      appBar: AppBar(),
    );
  }
}
