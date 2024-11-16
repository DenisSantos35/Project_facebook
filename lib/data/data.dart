/*
* Fontes imagens: https://source.unsplash.com/
* Foto específica:
*   https://source.unsplash.com/JQFHdpOKz2k/800x600
* Foto aleatória:
*   https://source.unsplash.com/9ChfwZzv4ys/800x600
* */

/* Usuário Logado */

import '../models/models.dart';

User usuarioAtual = User(
    name: "Denis Santos", urlImage: "https://picsum.photos/id/237/200/300");

/* Lista de usuários online */
List<User> usuariosOnline = [
  User(
      name: "José Renato de almeida",
      urlImage: "https://picsum.photos/seed/picsum/200/300"),
  User(
      name: "Maria Almeida",
      urlImage: "https://picsum.photos/200/300?grayscale"),
  User(
      name: "Fernando Lima de albuquerque filho",
      urlImage: "https://picsum.photos/200/300?grayscale"),
  User(
      name: "Marcela Faria",
      urlImage: "https://picsum.photos/id/870/200/300?grayscale&blur=2"),
  User(
      name: "Carlos Eduardo",
      urlImage: "https://picsum.photos/200/300?grayscale"),
  User(name: "Joana Santos", urlImage: "https://picsum.photos/200/300/?blur"),
  User(
      name: "Rodrigo Caio",
      urlImage: "https://picsum.photos/seed/picsum/200/300"),
  User(
      name: "Pedro do Carmo",
      urlImage: "https://picsum.photos/200/300?grayscale"),
];

/* Lista de estórias */
List<Story> story = [
  Story(
    user: usuariosOnline[0],
    urlImage: "https://picsum.photos/seed/picsum/200/300",
    isSee: true,
  ),
  Story(
    user: usuariosOnline[1],
    urlImage: "https://picsum.photos/200/300?grayscale",
    isSee: true,
  ),
  Story(
      user: usuariosOnline[2], urlImage: "https://picsum.photos/200/300/?blur"),
  Story(
      user: usuariosOnline[3],
      urlImage: "https://picsum.photos/id/870/200/300?grayscale&blur=2"),
  Story(
      user: usuariosOnline[4],
      urlImage: "https://picsum.photos/200/300?grayscale"),
  Story(
      user: usuariosOnline[5],
      urlImage: "https://picsum.photos/200/300?grayscale"),
  Story(
      user: usuariosOnline[6],
      urlImage: "https://picsum.photos/seed/picsum/200/300"),
  Story(
      user: usuariosOnline[7],
      urlImage: "https://picsum.photos/200/300?grayscale"),
];

/* Lista de postagens */
List<Posts> posts = [
  Posts(
      user: usuariosOnline[0],
      description: "Passeio muito legal no final de semana",
      timeAgo: "20m",
      urlImage: "https://picsum.photos/id/870/200/300?grayscale&blur=2",
      like: 30,
      comment: 3,
      sharing: 5),
  Posts(
      user: usuariosOnline[1],
      description: "Quero compartilhar com você algo que aconteceu...",
      timeAgo: "40m",
      urlImage: "https://picsum.photos/200/300?grayscale",
      like: 30,
      comment: 3,
      sharing: 5),
  Posts(
      user: usuariosOnline[2],
      description: "Não recomendo esse lugar, não fomos bem atendidos",
      timeAgo: "55m",
      urlImage: "https://picsum.photos/id/870/200/300?grayscale&blur=2",
      like: 30,
      comment: 3,
      sharing: 5),
  Posts(
      user: usuariosOnline[3],
      description:
          "Não importa o que você sabe, mas o que faz com o que você sabe!",
      timeAgo: "1h",
      urlImage: "https://picsum.photos/seed/picsum/200/300",
      like: 30,
      comment: 3,
      sharing: 5),
  Posts(
      user: usuariosOnline[4],
      description:
          "Preciso de indicações de eletricista, meu chuveiro pifou :(",
      timeAgo: "2h",
      urlImage: "https://picsum.photos/id/870/200/300?grayscale&blur=2",
      like: 30,
      comment: 3,
      sharing: 5),
  Posts(
      user: usuariosOnline[5],
      description: "Que chuva maravilhosa!",
      timeAgo: "2d",
      urlImage: "https://picsum.photos/id/870/200/300?grayscale&blur=2",
      like: 30,
      comment: 3,
      sharing: 5),
  Posts(
      user: usuariosOnline[6],
      description: "Um dia mais que especial, nos divertimos bastante ;)",
      timeAgo: "3d",
      urlImage: "https://picsum.photos/seed/picsum/200/300",
      like: 100,
      comment: 30,
      sharing: 3),
  Posts(
      user: usuariosOnline[7],
      description: "VOCÊ É DO TAMANHO DOS SEUS SONHOS! Lute, persista, "
          "insista, corra atrás, passe algumas noites sem dormir direito, "
          "mas nunca desista de seus sonhos, acredite que é capaz, se olhe "
          "no espelho e diga pra você: VOCÊ TEM POTENCIAL! "
          "Ninguém além de você mesmo pode torná-lo real.",
      timeAgo: "3d",
      urlImage: "https://picsum.photos/id/870/200/300?grayscale&blur=2",
      like: 230,
      comment: 25,
      sharing: 3),
];
