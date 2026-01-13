import 'package:flutter/material.dart';

class InputRow extends StatelessWidget {
  final List<Widget> children;

  const InputRow({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children
          .map((e) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: e,
                ),
              ))
          .toList(),
    );
  }
}
