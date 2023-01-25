import 'package:flutter/material.dart';
import 'package:news_api/data/models/news_info.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.data}) : super(key: key);

  final List<NewsInfo> data;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
