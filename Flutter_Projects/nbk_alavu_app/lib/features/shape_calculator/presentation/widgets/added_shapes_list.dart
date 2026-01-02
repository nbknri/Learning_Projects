import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

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
          margin: const EdgeInsets.only(bottom: 8),
          elevation: 2,
          shadowColor: AppColor.primary.withValues(alpha: 0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColor.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                _getShapeIcon(shape.type),
                color: AppColor.primary,
                size: 20,
              ),
            ),
            title: Text(
              shape.type.displayName,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  dimensionsText,
                  style: TextStyle(
                    fontSize: 13,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Area: ${FormatUtils.formatArea(shape.areaInSqMeter)} Sq.m",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.accent,
                  ),
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