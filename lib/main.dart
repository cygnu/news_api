import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/screens/details_screen.dart';
import 'package:news_app/screens/overview_screen.dart';
import 'package:news_app/screens/views/main_view_model.dart';
import 'package:provider/provider.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainViewModel>(
          create: (_) => MainViewModel(),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => OverviewScreen(),
          OverviewScreen.route: (context) => OverviewScreen(),
          DetailsScreen.route: (context) => DetailsScreen(),
        },
      ),
    );
  }
}
