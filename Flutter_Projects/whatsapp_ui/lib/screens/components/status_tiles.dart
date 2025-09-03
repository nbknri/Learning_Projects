import 'package:flutter/material.dart';
import 'package:whatsapp_ui/whatsapp_data.dart';
import 'package:dotted_border/dotted_border.dart';
import 'dart:math';
import '../components/divider.dart';

Data data = Data();

class StatusTiles extends StatelessWidget {
  const StatusTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: DottedBorder(
              options: RoundedRectDottedBorderOptions(
                radius: Radius.circular(30),
                color: Colors.teal.shade300,
                dashPattern: [
                  (2 * pi * 27) /
                      ((data.statusList.values.elementAt(index).elementAt(2))
                          as num),
                  (data.statusList.values.elementAt(index).elementAt(3)
                      as double),
                ],
                strokeWidth: 3,
              ),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage(
                    data.statusList.values.elementAt(index).elementAt(1)
                        as String,
                  ),
                ),
              ),
            ),
            title: Text(
              '${data.statusList.values.elementAt(index).elementAt(0)}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              '${data.statusList.values.elementAt(index).elementAt(4)}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return data.statusList.values.elementAt(index).elementAt(5) as bool
              ? SizedBox(height: 20)
              : CustomDivider();
        },
        itemCount: data.statusList.length,
      ),
    );
  }
}
