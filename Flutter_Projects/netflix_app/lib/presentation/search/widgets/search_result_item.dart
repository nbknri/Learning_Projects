import 'package:flutter/material.dart';

const String imageUrl =
    'https://media.themoviedb.org/t/p/w440_and_h660_face/nrM2xFUfKJJEmZzd5d7kohT2G0C.jpg';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
