import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project_facebook/components/area_story.dart';
import 'package:project_facebook/components/button_circle.dart';
import 'package:project_facebook/components/create_post_area.dart';
import 'package:project_facebook/data/data.dart';
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
          // app bar da pagina contem logo, barra de pesquisa e de mensager
          SliverAppBar(
            backgroundColor: Colors.white,
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
          // area de postagem com avatar e input de pensamentos
          //botoes ao vivo, foto e sala
          SliverToBoxAdapter(
            child: CreatePostArea(
              user: usuarioAtual,
            ),
          ),
          // area de status
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaStory(user: usuarioAtual, storys: story),
            ),
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
