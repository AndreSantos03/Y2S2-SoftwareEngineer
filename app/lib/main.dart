import 'package:app/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset("./assets/Portugal.png"),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar( ),
      drawer: Drawer(),
      appBar: AppBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final primaryColor = const Color(0xff4338CA);

  final secondaryColor = const Color(0xff6D28D9);

  final accentColor = const Color(0xffffffff);

  final backgroundColor = const Color(0xffffffff);

  final errorColor = const Color(0xffEF4444);

  static int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: primaryColor,
      child: SizedBox(
        height: 74,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconBottomBar(
                  text: "Search",
                  icon: Icons.search_outlined,
                  selected: selectedIndex == 0,
                  onPressed: () {
                    selectedIndex = 0;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SearchPage()));
                  }),
              IconBottomBar(
                  text: "Map",
                  icon: Icons.map_outlined,
                  selected: selectedIndex == 1,
                  onPressed: () {
                    selectedIndex = 1;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyHomePage(title: "a")));
                  }),
              IconBottomBar(
                  text: "Profile",
                  icon: Icons.person_outlined,
                  selected: selectedIndex == 2,
                  onPressed: () {selectedIndex = 2;}),
            ],
          ),
        ),
      ),
    );
  }
}


class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon:
          Icon(icon, size: 25, color: selected ? accentColor : Colors.grey),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .1,
              color: selected ? accentColor : Colors.grey),
        )
      ],
    );
  }
}