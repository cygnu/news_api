import 'package:flutter/material.dart';
import 'package:news_app/components/news_list_view.dart';

class OverviewScreen extends StatelessWidget {
  static const route = 'overview_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: NewsListView(),
    );
  }
}
