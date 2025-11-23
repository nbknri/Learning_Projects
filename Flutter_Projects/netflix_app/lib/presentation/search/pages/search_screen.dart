import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: CupertinoSearchTextField(
                  backgroundColor: kGreyColor.withValues(alpha: 0.25),
                  prefixIcon: Icon(CupertinoIcons.search, color: kGreyColor),
                ),
              ),
              kHight10,
              Expanded(
                // child: const SearchIdle()
                child: const SearchResult(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
