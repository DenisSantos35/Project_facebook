import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project_facebook/components/tab_navigation.dart';
import 'package:project_facebook/screens/home.dart';

class PageMain extends StatefulWidget {
  const PageMain({super.key});

  @override
  State<PageMain> createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  final List<Widget> _pages = [
    const Home(),
    const Scaffold(
      backgroundColor: Colors.green,
    ),
    const Scaffold(
      backgroundColor: Colors.yellow,
    ),
    const Scaffold(
      backgroundColor: Colors.red,
    ),
    const Scaffold(
      backgroundColor: Colors.purple,
    ),
    const Scaffold(
      backgroundColor: Colors.blue,
    ),
  ];

  int _indexTabSelection = 0;

  List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.menu
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: _pages,
        ),
        bottomNavigationBar: TabNavigation(
          icons: _icons,
          indexTabSelection: _indexTabSelection,
          onTap: (index) {
            setState(() {
              _indexTabSelection = index;
            });
          },
        ),
      ),
    );
  }
}
