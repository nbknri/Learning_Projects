import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/theme/app_theme.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/extensions/shape_type_extension.dart';

class AddedShapesList extends StatefulWidget {
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
  State<AddedShapesList> createState() => _AddedShapesListState();
}

class _AddedShapesListState extends State<AddedShapesList> {
  final ScrollController _scrollController = ScrollController();
  int _previousLength = 0;

  @override
  void initState() {
    super.initState();
    _previousLength = widget.shapes.length;
  }

  @override
  void didUpdateWidget(AddedShapesList oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Scroll to bottom when a new shape is added
    if (widget.shapes.length > _previousLength) {
      _previousLength = widget.shapes.length;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    } else {
      _previousLength = widget.shapes.length;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
      controller: _scrollController,
      shrinkWrap: widget.shrinkWrap,
      physics: widget.physics,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: widget.shapes.length,
      itemBuilder: (context, index) {
        final shape = widget.shapes[index];
        final dimensionsText = shape.formattedDimensions.entries
            .map((e) => "${e.key}: ${e.value}")
            .join(", ");

        return Card(
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 2,
            ),
            leading: Container(
              padding: const EdgeInsets.all(6),
              decoration: Theme.of(context).shapeCardIconDecoration,
              child: Icon(
                _getShapeIcon(shape.type),
                color: AppColor.primary,
                size: 18,
              ),
            ),
            title: Text(
              "${index + 1}. ${shape.type.displayName} (In ${shape.unit})",
              style: Theme.of(context).shapeCardTitle,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 2),
                Text(
                  dimensionsText,
                  style: Theme.of(context).shapeCardDimensions(context),
                ),
                const SizedBox(height: 2),
                Text(
                  "Area: ${FormatUtils.formatArea(shape.areaInSqMeter)} Sq.m",
                  style: Theme.of(context).shapeCardArea,
                ),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete_outline),
              color: AppColor.deleteButton,
              onPressed: () => widget.deleteShape(index),
              tooltip: 'Delete',
            ),
          ),
        );
      },
    );
  }
}