import 'package:flutter/material.dart';
import 'package:flutter_agenda_app/screen/home_screen.dart';
import 'package:flutter_agenda_app/screen/theme.dart';
import 'package:flutter_agenda_app/services/theme_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'database/db.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: HomeScreen(),
    );
  }
}

