import 'package:flutter/material.dart';

class Product {
  final String image, title, route;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.route,
  });
}

List<Product> literaryevents = [
  Product(
      id: 1,
      title: "Essay Writing-English",
      image: "assets/images/essay.jpg",
      route: '/essayenglish'),
  Product(
      id: 2,
      title: "Essay Writing-Malayalam",
      image: "assets/images/essay.jpg",
      route: '/essaymalayalam'),
  Product(
      id: 3,
      title: "Essay Writing-Hindi",
      image: "assets/images/essay.jpg",
      route: '/essayhindi'),
  Product(
      id: 4,
      title: "Elocution-English",
      image: "assets/images/elocution.jpg",
      route: '/elocutionenglish'),
  Product(
      id: 5,
      title: "Elocution-Malayalam",
      image: "assets/images/elocution.jpg",
      route: '/elocutionmalayalam'),
  Product(
      id: 6,
      title: "Elocution-Hindi",
      image: "assets/images/elocution.jpg",
      route: '/elocutionhindi'),
  Product(
      id: 7,
      title: "Pencil Drawing",
      image: "assets/images/pencil.jpeg",
      route: '/pencildrawing'),
  Product(
      id: 8,
      title: "Cartooning",
      image: "assets/images/cartoon.jpeg",
      route: '/cartooning'),
];

List<Product> groupMusicEvents = [
  Product(
      id: 1,
      title: "Western Vocal",
      image: "assets/images/song.jpg",
      route: '/westernvocalgroup'),
  Product(
      id: 2,
      title: "Nadan  Pattu",
      image: "assets/images/song.jpg",
      route: '/nadanpattu'),
  Product(
      id: 3,
      title: "Group Song",
      image: "assets/images/song.jpg",
      route: '/groupsong'),
];

List<Product> groupDanceEvents = [
  Product(
      id: 1,
      title: "Group Dance",
      image: "assets/images/west_group.jpg",
      route: '/westerngroupdance'),
  Product(
      id: 2,
      title: "Trio",
      image: "assets/images/west_group.jpg",
      route: '/trio'),
  Product(
      id: 3,
      title: "Duet",
      image: "assets/images/west_group.jpg",
      route: '/duet'),
  Product(
      id: 4,
      title: "Mirror Dance",
      image: "assets/images/west_group.jpg",
      route: '/mirrordance'),
  Product(
      id: 5,
      title: "Thiruvathira",
      image: "assets/images/trad_group.jpg",
      route: '/thiruvathira'),
  Product(
      id: 6,
      title: "Margam Kali",
      image: "assets/images/trad_group.jpg",
      route: '/margamkali'),
  Product(
      id: 7,
      title: "Oppana",
      image: "assets/images/trad_group.jpg",
      route: '/oppana'),
];

List<Product> newlaunchevents = [
  Product(
      id: 1,
      title: 'Meet your loved character',
      image: "assets/images/meetlove.jpg",
      route: '/meetlove'),
  Product(
      id: 2,
      title: 'Literature Trivia Quiz',
      image: "assets/images/trivia.jpg",
      route: '/trivia'),
  Product(
      id: 3,
      title: 'Spelling Bee',
      image: "assets/images/spellingbee.jpg",
      route: '/spelling'),
  Product(
      id: 4,
      title: 'Mad Ads',
      image: "assets/images/madads.jpg",
      route: '/madads'),
  Product(
      id: 6,
      title: 'Book Debate',
      image: "assets/images/book.jpeg",
      route: '/bookdebate'),
  Product(
      id: 7,
      title: 'Calligraphy',
      image: "assets/images/calligraphy.jpg",
      route: '/calligraphy')
];

List<Product> theatregroupevents = [
  Product(
    id: 1,
    title: 'Mime',
    image: "assets/images/theatre.jpg",
    route: '/mime',
  ),
  Product(
      id: 1,
      title: 'Tableau',
      image: "assets/images/theatre.jpg",
      route: '/tableau'),
  Product(
    id: 1,
    title: 'Skit',
    image: "assets/images/theatre.jpg",
    route: '/skit',
  ),
];

List<Product> musicevents = [
  Product(
      id: 1,
      title: "Classical-Male",
      image: "assets/images/song.jpg",
      route: '/classicalmale'),
  Product(
      id: 2,
      title: "Classical-Female",
      image: "assets/images/song.jpg",
      route: '/classicalfem'),
  Product(
    id: 3,
    title: "Tabla",
    image: "assets/images/tabla.jpg",
    route: '/tabla',
  ),
  Product(
      id: 4,
      title: "Mridangam",
      image: "assets/images/mridangam.jpg",
      route: '/mridangam'),
  Product(
    id: 5,
    title: "Drums",
    image: "assets/images/drums.jpg",
    route: '/drums',
  ),
  Product(
      id: 6,
      title: "Guitar",
      image: "assets/images/guitar.jpg",
      route: '/guitar'),
  Product(
      id: 7,
      title: "Violin",
      image: "assets/images/violin.jpg",
      route: '/violin'),
  Product(
    id: 8,
    title: "Veena",
    image: "assets/images/veena.jpg",
    route: '/veena',
  ),
  Product(
      id: 9,
      title: "Keyboard",
      image: "assets/images/keyboard.jpg",
      route: '/keyboard'),
  Product(
      id: 10,
      title: "Flute",
      image: "assets/images/flute.jpg",
      route: '/flute'),
  Product(
      id: 11,
      title: "Light music-male",
      image: "assets/images/song.jpg",
      route: '/lightmusicmale'),
  Product(
      id: 12,
      title: "Light music-female",
      image: "assets/images/song.jpg",
      route: '/lightmusicfemale'),
  Product(
      id: 13,
      title: "Western vocal solo",
      image: "assets/images/song.jpg",
      route: '/westernvocal'),
  Product(
      id: 14,
      title: "Mappila Pattu",
      image: "assets/images/song.jpg",
      route: '/mappilapattu'),
  Product(
      id: 15,
      title: "Solo Song",
      image: "assets/images/song.jpg",
      route: '/solosong'),
  Product(
      id: 16,
      title: "Recitation Hindi",
      image: "assets/images/song.jpg",
      route: '/rechindi'),
  Product(
      id: 17,
      title: "Recitation English",
      image: "assets/images/song.jpg",
      route: '/receng'),
  Product(
      id: 18,
      title: "Recitation Malayalam",
      image: "assets/images/song.jpg",
      route: '/recmal'),
  Product(
      id: 19,
      title: "Malayalam Rap",
      image: "assets/images/song.jpg",
      route: '/rapmal'),
  Product(
      id: 20,
      title: "English Rap",
      image: "assets/images/song.jpg",
      route: '/rapeng')
];

List<Product> theatreevents = [
  Product(
      id: 1,
      title: "Mimicry",
      image: "assets/images/standupcomedy.jpg",
      route: '/mimicry'),
  Product(
      id: 2,
      title: "Monoact",
      image: "assets/images/standupcomedy.jpg",
      route: '/monoact'),
  Product(
      id: 3,
      title: "Stand Up Comedy",
      image: "assets/images/standupcomedy.jpg",
      route: '/standupcomedy'),
  Product(
      id: 4,
      title: "Kadha Prasangam",
      image: "assets/images/standupcomedy.jpg",
      route: '/kadhaprasangam'),
  Product(
      id: 5,
      title: "Fancy Dress",
      image: "assets/images/fancydress.jpg",
      route: '/fancydress')
];

List<Product> fineartsevents = [
  Product(
      id: 1,
      title: "Painting",
      image: "assets/images/painting.jpg",
      route: '/painting'),
  Product(
      id: 2,
      title: "Rangoli",
      image: "assets/images/rangoli.jpg",
      route: '/rangoli'),
  Product(
      id: 3,
      title: "Sculpturing",
      image: "assets/images/sculpturing.jpg",
      route: '/sculpturing'),
  Product(
      id: 4,
      title: "Clay Modeling",
      image: "assets/images/claymodel.jpg",
      route: '/claymodel'),
  Product(
      id: 5,
      title: "Beads Work",
      image: "assets/images/beadswork.jpg",
      route: '/beadswork'),
  Product(
      id: 6,
      title: "Art Using Waste Materials",
      image: "assets/images/art.jpg",
      route: '/art'),
  Product(
      id: 7,
      title: "Origami(craft works)",
      image: "assets/images/origami.jpg",
      route: '/origami')
];

List<Product> danceevents = [
  Product(
      id: 1,
      title: "Bharathanatyam",
      image: "assets/images/dance.jpg",
      route: '/bharathanatyam'),
  Product(
      id: 2,
      title: "Kuchipudi",
      image: "assets/images/dance.jpg",
      route: '/kuchipudi'),
  Product(
      id: 3,
      title: "Mohiniyattam",
      image: "assets/images/dance.jpg",
      route: '/mohiniyattam'),
  Product(
      id: 4,
      title: "Solo Dance",
      image: "assets/images/solodance.jpg",
      route: '/solodance'),
  Product(
      id: 5,
      title: "Folk Dance",
      image: "assets/images/folk.jpg",
      route: '/folk'),
];
