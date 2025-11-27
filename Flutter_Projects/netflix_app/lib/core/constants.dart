import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors.dart';

//SizedBox
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

const kHight10 = SizedBox(height: 10);
const kHight20 = SizedBox(height: 20);
const kHight30 = SizedBox(height: 30);
const kHight50 = SizedBox(height: 50);

//Font Family
final String? googleFontFamily = GoogleFonts.montserrat().fontFamily;
final String? numberFontFamily = GoogleFonts.roboto().fontFamily;

//Images
final String imageUrl =
    'https://media.themoviedb.org/t/p/w440_and_h660_face/nrM2xFUfKJJEmZzd5d7kohT2G0C.jpg';

final String lrgImageUrl =
    'https://media.themoviedb.org/t/p/w1000_and_h563_face/mcmTVTMCiU5hcWpau53ISftjaqc.jpg';

final String avatarImage =
    'https://media.themoviedb.org/t/p/w276_and_h350_face/dW5U5yrIIPmMjRThR9KT2xH6nTz.jpg';

// final List imageList = [
//   'https://media.themoviedb.org/t/p/w440_and_h660_face/fGodXWqJkkkbSebPIlxLSygV8GY.jpg',
//   'https://media.themoviedb.org/t/p/w440_and_h660_face/np7ZzU2rmUqqIPQ4HtfcC8JLOvS.jpg',
//   'https://media.themoviedb.org/t/p/w440_and_h660_face/kGLgaDrYWmTAdRFzGP5pBquRnhO.jpg',
// ];

final String bigImage =
    'https://www.themoviedb.org/t/p/w1280/kdR0jx7i8AmRn3UijWLb9j7osi2.jpg';

final String netflixLogo =
    'https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png';

final String topTenImage =
    'https://media.themoviedb.org/t/p/w440_and_h660_face/jLLtx3nTRSLGPAKl4RoIv1FbEBr.jpg';

final String cmsImage =
    'https://media.themoviedb.org/t/p/w1066_and_h600_face/khgUrxxkQ9zIgMOvuQq8JOSmBEN.jpg';

final String evnImage =
    'https://media.themoviedb.org/t/p/w710_and_h400_multi_faces/4En5BTOUvUHWH36esCtlXU1Rp4Q.jpg';

//TextStyle
final TextStyle kHomeTopTitleStyle = const TextStyle(
  color: kWhiteColor,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

final TextStyle appBarTitleStyle = const TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  color: kWhiteColor,
);

//BorderRadius
final BorderRadius kBRadius30 = BorderRadius.circular(30);

const imageAppendUrl = 'https://image.tmdb.org/t/p/w500';
