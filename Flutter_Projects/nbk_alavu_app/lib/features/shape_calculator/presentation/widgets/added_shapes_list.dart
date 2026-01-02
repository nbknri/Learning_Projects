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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemCount: shapes.length,
      itemBuilder: (context, index) {
        final shape = shapes[index];
        final dimensionsText = shape.formattedDimensions.entries
            .map((e) => "${e.key}: ${e.value}")
            .join(", ");

        return ListTile(
          leading: CircleAvatar(
            backgroundColor: AppColor.secondary.withValues(alpha: 0.2), 
            foregroundColor: AppColor.secondary,
            child: Text("${index + 1}"),
          ),
          title: Text("${shape.type.displayName} ($dimensionsText)"),
          subtitle: Text(
            "Area: ${FormatUtils.formatArea(shape.areaInSqMeter)} Sq.m",
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: AppColor.deleteButton),
            onPressed: () => deleteShape(index),
          ),
        );
      },
    );
  }
}