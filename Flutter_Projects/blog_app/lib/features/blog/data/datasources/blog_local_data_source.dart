import 'package:blog_app/features/blog/data/model/blog_model.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

abstract interface class BlogLocalDataSource {
  void uploadLocalBlogs({required List<BlogModel> blogs});
  List<BlogModel> loadBlogs();
}

class BlogLocalDataSourceImpl implements BlogLocalDataSource {
  final Box box;

  BlogLocalDataSourceImpl(this.box);

  @override
  List<BlogModel> loadBlogs() {
    List<BlogModel> blogs = [];

    for (int i = 0; i < box.length; i++) {
      final rawData = box.get(i.toString());

      if (rawData != null) {
        final blogMap = Map<String, dynamic>.from(rawData);
        blogs.add(BlogModel.fromJson(blogMap));
      }
    }
    return blogs;
  }

  @override
  void uploadLocalBlogs({required List<BlogModel> blogs}) {
    box.clear();

    for (int i = 0; i < blogs.length; i++) {
      box.put(i.toString(), blogs[i].toJson());
    }
  }
}
