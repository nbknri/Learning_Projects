import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';

const kWidth = SizedBox(width: 10);
const kHight = SizedBox(height: 10);

final String? googleFontFamily = GoogleFonts.montserrat().fontFamily;

final String? numberFontFamily = GoogleFonts.roboto().fontFamily;

final String imageUrl =
    'https://media.themoviedb.org/t/p/w440_and_h660_face/nrM2xFUfKJJEmZzd5d7kohT2G0C.jpg';

final String lImageUrl =
    'https://media.themoviedb.org/t/p/w1000_and_h563_face/mcmTVTMCiU5hcWpau53ISftjaqc.jpg';

final String avatarImage =
    'https://media.themoviedb.org/t/p/w276_and_h350_face/dW5U5yrIIPmMjRThR9KT2xH6nTz.jpg';

final List imageList = [
  'https://media.themoviedb.org/t/p/w440_and_h660_face/fGodXWqJkkkbSebPIlxLSygV8GY.jpg',
  'https://media.themoviedb.org/t/p/w440_and_h660_face/np7ZzU2rmUqqIPQ4HtfcC8JLOvS.jpg',
  'https://media.themoviedb.org/t/p/w440_and_h660_face/kGLgaDrYWmTAdRFzGP5pBquRnhO.jpg',
];

final String bigImage =
    'https://www.themoviedb.org/t/p/w1280/kdR0jx7i8AmRn3UijWLb9j7osi2.jpg';


final String netflixLogo = 'https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png';

final TextStyle kHomeTopTitleStyle = const TextStyle(
  color: kWhiteColor,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
