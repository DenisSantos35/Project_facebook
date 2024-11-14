import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project_facebook/components/button_circle.dart';
import 'package:project_facebook/utils/palete_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.orange,
            floating: true,
            centerTitle: false,
            //expandedHeight: 250,
            title: const Text(
              "facebook",
              style: TextStyle(
                  color: PaleteColors.azulFacebook,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1.2),
            ),
            actions: [
              ButtonCircle(
                icone: Icons.search,
                iconeTamanho: 30,
                onPressed: () {},
              ),
              ButtonCircle(
                icone: LineIcons.facebookMessenger,
                iconeTamanho: 30,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.green,
              height: 1800,
            ),
          )
        ],
      ),
    );
  }
}
