import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';

/// Header displaying "Added Shapes" section title
class AddedShapesHeader extends StatelessWidget {
  const AddedShapesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          AppStrings.addedShapes,
          style: Theme.of(context).sectionHeaderStyle,
        ),
      ),
    );
  }
}
