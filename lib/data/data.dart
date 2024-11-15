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
