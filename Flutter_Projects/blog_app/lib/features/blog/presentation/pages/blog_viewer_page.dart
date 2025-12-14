import 'package:flutter/material.dart';

class BlogViewerPage extends StatelessWidget {
  static MaterialPageRoute<dynamic> route() => MaterialPageRoute(builder: (context) => BlogViewerPage());
  const BlogViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar());
  }
}
