import 'package:app_mvvm/app/app.locator.dart';
import 'package:app_mvvm/app/app.router.dart';
import 'package:app_mvvm/views/future_example/future_example_view.dart';
import 'package:flutter/material.dart';

import 'package:stacked_services/stacked_services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVVM Demo',
      navigatorKey: StackedService.navigatorKey,
      theme: ThemeData(),
      home: const FutureExampleView(),
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
