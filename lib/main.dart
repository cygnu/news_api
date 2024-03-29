import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/screens/overview_screen.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(
    ProviderScope(child: NewsApi()),
  );
}

class NewsApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => OverviewScreen(),
        OverviewScreen.route: (context) => OverviewScreen(),
      },
    );
  }
}
