import 'package:property_rents/models/country_model.dart';

final List<CountryModel> countryList = [
  CountryModel(id: 1,title: 'Some Movie Name', imageUrl: 'assets/images/flags/indonesia.png'),
  CountryModel(id: 2,title: 'Some Movie Name', imageUrl: 'assets/images/flags/uk.png'),
  CountryModel(id: 3,title: 'Some Movie Name', imageUrl: 'assets/images/flags/germany.png'),
  CountryModel(id: 4,title: 'Some Movie Name', imageUrl: 'assets/images/flags/france.png'),
  // CountryModel(2,'Some Movie Name', 'assets/images/flags/uk.png'),
  // CountryModel(3,'Some Movie Name', 'assets/images/flags/germany.png'),
  // CountryModel(4,'Some Movie Name', 'assets/images/flags/france.png'),
];

// List<MovieModel> movies = [
//   MovieModel(
//     name: 'Spider-Man 1: No Way Home',
//     desc:
//         'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man. With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
//     duration: '2h 50m',
//     coverUrl: 'assets/movies_cover/movie1.jpg',
//     actors: [
//       ActorModel(
//           name: 'Actor 1', imageUrl: 'assets/actors/benedict_cumberbatch.jpg'),
//       ActorModel(name: 'Actor 2', imageUrl: 'assets/actors/jamie_foxx.jpg'),
//       ActorModel(name: 'Actor 3', imageUrl: 'assets/actors/jon_favreau.jpg'),
//       ActorModel(name: 'Actor 4', imageUrl: 'assets/actors/tom_holland.jpg'),
//       ActorModel(name: 'Actor 5', imageUrl: 'assets/actors/willeam_dafoe.jpg'),
//       ActorModel(name: 'Actor 6', imageUrl: 'assets/actors/zendaya.jpg'),
//     ],
//     rate: 4.2,
//     y18plus: false,
//     movieCategry: MovieCategry.action,
//   ),
//   MovieModel(
//     name: 'Spider-Man 2: No Way Home',
//     desc:
//         'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man. With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
//     duration: '2h 50m',
//     coverUrl: 'assets/movies_cover/movie1.jpg',
//     actors: [
//       ActorModel(
//           name: 'Actor 1', imageUrl: 'assets/actors/benedict_cumberbatch.jpg'),
//       ActorModel(name: 'Actor 2', imageUrl: 'assets/actors/jamie_foxx.jpg'),
//       ActorModel(name: 'Actor 3', imageUrl: 'assets/actors/jon_favreau.jpg'),
//       ActorModel(name: 'Actor 4', imageUrl: 'assets/actors/tom_holland.jpg'),
//       ActorModel(name: 'Actor 5', imageUrl: 'assets/actors/willeam_dafoe.jpg'),
//       ActorModel(name: 'Actor 6', imageUrl: 'assets/actors/zendaya.jpg'),
//     ],
//     rate: 5.0,
//     y18plus: true,
//     movieCategry: MovieCategry.comedy,
//   ),
//   MovieModel(
//     name: 'Spider-Man 3: No Way Home',
//     desc:
//         'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man. With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
//     duration: '2h 50m',
//     coverUrl: 'assets/movies_cover/movie1.jpg',
//     actors: [
//       ActorModel(
//           name: 'Actor 1', imageUrl: 'assets/actors/benedict_cumberbatch.jpg'),
//       ActorModel(name: 'Actor 2', imageUrl: 'assets/actors/jamie_foxx.jpg'),
//       ActorModel(name: 'Actor 3', imageUrl: 'assets/actors/jon_favreau.jpg'),
//       ActorModel(name: 'Actor 4', imageUrl: 'assets/actors/tom_holland.jpg'),
//       ActorModel(name: 'Actor 5', imageUrl: 'assets/actors/willeam_dafoe.jpg'),
//       ActorModel(name: 'Actor 6', imageUrl: 'assets/actors/zendaya.jpg'),
//     ],
//     rate: 3.8,
//     y18plus: false,
//     movieCategry: MovieCategry.fantasy,
//   ),
//   MovieModel(
//     name: 'Spider-Man 4: No Way Home',
//     desc:
//         'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man. With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
//     duration: '2h 50m',
//     coverUrl: 'assets/movies_cover/movie1.jpg',
//     actors: [
//       ActorModel(
//           name: 'Actor 1', imageUrl: 'assets/actors/benedict_cumberbatch.jpg'),
//       ActorModel(name: 'Actor 2', imageUrl: 'assets/actors/jamie_foxx.jpg'),
//       ActorModel(name: 'Actor 3', imageUrl: 'assets/actors/jon_favreau.jpg'),
//       ActorModel(name: 'Actor 4', imageUrl: 'assets/actors/tom_holland.jpg'),
//       ActorModel(name: 'Actor 5', imageUrl: 'assets/actors/willeam_dafoe.jpg'),
//       ActorModel(name: 'Actor 6', imageUrl: 'assets/actors/zendaya.jpg'),
//     ],
//     rate: 4.2,
//     y18plus: false,
//     movieCategry: MovieCategry.romance,
//   ),
//   MovieModel(
//     name: 'Spider-Man 5: No Way Home',
//     desc:
//         'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man. With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
//     duration: '2h 50m',
//     coverUrl: 'assets/movies_cover/movie1.jpg',
//     actors: [
//       ActorModel(
//           name: 'Actor 1', imageUrl: 'assets/actors/benedict_cumberbatch.jpg'),
//       ActorModel(name: 'Actor 2', imageUrl: 'assets/actors/jamie_foxx.jpg'),
//       ActorModel(name: 'Actor 3', imageUrl: 'assets/actors/jon_favreau.jpg'),
//       ActorModel(name: 'Actor 4', imageUrl: 'assets/actors/tom_holland.jpg'),
//       ActorModel(name: 'Actor 5', imageUrl: 'assets/actors/willeam_dafoe.jpg'),
//       ActorModel(name: 'Actor 6', imageUrl: 'assets/actors/zendaya.jpg'),
//     ],
//     rate: 4.8,
//     y18plus: true,
//     movieCategry: MovieCategry.action,
//   ),
//   MovieModel(
//     name: 'Spider-Man 6: No Way Home',
//     desc:
//         'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man. With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
//     duration: '2h 50m',
//     coverUrl: 'assets/movies_cover/movie1.jpg',
//     actors: [
//       ActorModel(
//           name: 'Actor 1', imageUrl: 'assets/actors/benedict_cumberbatch.jpg'),
//       ActorModel(name: 'Actor 2', imageUrl: 'assets/actors/jamie_foxx.jpg'),
//       ActorModel(name: 'Actor 3', imageUrl: 'assets/actors/jon_favreau.jpg'),
//       ActorModel(name: 'Actor 4', imageUrl: 'assets/actors/tom_holland.jpg'),
//       ActorModel(name: 'Actor 5', imageUrl: 'assets/actors/willeam_dafoe.jpg'),
//       ActorModel(name: 'Actor 6', imageUrl: 'assets/actors/zendaya.jpg'),
//     ],
//     rate: 3.5,
//     y18plus: true,
//     movieCategry: MovieCategry.action,
//   ),
// ];