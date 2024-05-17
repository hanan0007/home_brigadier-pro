import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:home_brigadier_admin_panel/splash_view.dart';
import 'package:home_brigadier_admin_panel/theme/theme.dart';

import 'app/routes/app_pages.dart';

late BuildContext appContext;
late ColorScheme appColorScheme;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init();

  /// app preferences
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  ///
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    appContext = context;
    appColorScheme = Theme.of(context).colorScheme;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home Brigadier",
      theme: AppTheme.instance.light,
      // darkTheme: AppTheme.instance.dark,
      themeMode: ThemeMode.light,
      getPages: AppPages.routes,
      home: const SplashView(),
    );
  }
}
