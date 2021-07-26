import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/screens/overview_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(NewsApp());

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ArticleModel>(
          create: (_) => ArticleModel(),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => OverviewScreen(),
          OverviewScreen.route: (context) => OverviewScreen(),
        },
      ),
    );
  }
}
