import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Sample', style: TextStyle(fontSize: 25),)),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Person $index',
              style: TextStyle(fontSize: 25),
              ),
              subtitle: Text('Messege $index',
              style: TextStyle(fontSize: 20),
              ),
              leading: CircleAvatar(
                radius: 30,
                // backgroundColor: Colors.red,
                backgroundImage: NetworkImage("https://avatar.iran.liara.run/public/$index"),
              ),
              trailing: Text('$index:00 PM'),
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
