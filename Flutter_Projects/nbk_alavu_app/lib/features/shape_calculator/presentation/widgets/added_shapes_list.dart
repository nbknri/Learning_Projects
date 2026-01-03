import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/theme/app_theme.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/extensions/shape_type_extension.dart';

class AddedShapesList extends StatelessWidget {
  final List<Shape> shapes;
  final Function(int index) deleteShape;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  const AddedShapesList({
    super.key,
    required this.shapes,
    required this.deleteShape,
    this.shrinkWrap = false,
    this.physics,
  });

  IconData _getShapeIcon(ShapeType type) {
    switch (type) {
      case ShapeType.triangle:
        return Icons.change_history;
      case ShapeType.rectangle:
        return Icons.crop_landscape;
      case ShapeType.square:
        return Icons.crop_square;
      case ShapeType.circle:
        return Icons.circle_outlined;
      case ShapeType.irregularQuadrilateral:
        return Icons.terrain;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap,
      physics: physics,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: shapes.length,
      itemBuilder: (context, index) {
        final shape = shapes[index];
        final dimensionsText = shape.formattedDimensions.entries
            .map((e) => "${e.key}: ${e.value}")
            .join(", ");

        return Card(
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: Theme.of(context).shapeCardIconDecoration,
              child: Icon(
                _getShapeIcon(shape.type),
                color: AppColor.primary,
                size: 20,
              ),
            ),
            title: Text(
              shape.type.displayName,
              style: Theme.of(context).shapeCardTitle,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  dimensionsText,
                  style: Theme.of(context).shapeCardDimensions(context),
                ),
                const SizedBox(height: 4),
                Text(
                  "Area: ${FormatUtils.formatArea(shape.areaInSqMeter)} Sq.m",
                  style: Theme.of(context).shapeCardArea,
                ),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete_outline),
              color: AppColor.deleteButton,
              onPressed: () => deleteShape(index),
              tooltip: 'Delete',
            ),
          ),
        );
      },
    );
  }
}