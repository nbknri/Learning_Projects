import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/model/triangle_model.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';

class AddedTrianglesList extends StatelessWidget {
  final List<TriangleModel> triangles;
  final Function(int index) deleteTriangle;

  const AddedTrianglesList({super.key, required this.triangles, required this.deleteTriangle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: triangles.length,
      itemBuilder: (context, index) {
        final t = triangles[index];
        return ListTile(
          leading: CircleAvatar(child: Text("${index + 1}")),
          title: Text("Sides: ${t.sideA}, ${t.sideB}, ${t.sideC}"),
          subtitle: Text(
            "Area: ${t.areaInSqMeter.toStringAsFixed(3)} Sq.m",
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: AppColor.deleteButton),
            onPressed: () => deleteTriangle(index),
          ),
        );
      },
    );
  }
}