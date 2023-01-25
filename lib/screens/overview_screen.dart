import 'package:flutter/material.dart';
import 'package:news_api/components/news_page_body.dart';

class OverviewScreen extends StatelessWidget {
  static const route = 'overview_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: NewsPageBody(),
    );
  }
}
