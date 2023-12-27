import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_flutter_youtube/generated/l10n.dart';
import 'package:localization_flutter_youtube/screen/home_screen.dart';
import 'package:localization_flutter_youtube/screen/provider/localization_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => LocalizationProvider()..init()),
    ], child: const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalizationProvider>(
        builder: (context, localizationProvider, child) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: localizationProvider.locale,
        home: const HomeScreen(),
      );
    });
  }
}
