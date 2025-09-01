import 'package:bro_flutter_learning/new_screen_2.dart';
import 'package:flutter/material.dart';

class NewScreeOne extends StatelessWidget {
  const NewScreeOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen', style: TextStyle(fontSize: 30)),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return NewScreenTwo(name: 'Person $index');
                    },
                  ),
                );
              },
              title: Text('Person $index'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
