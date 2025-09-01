import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product Page", style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Home", style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
