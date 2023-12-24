import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_flutter_youtube/generated/l10n.dart';
import 'package:localization_flutter_youtube/screen/bloc/localization_bloc.dart';
import 'package:localization_flutter_youtube/screen/home_screen.dart';

void main() {
  runApp( BlocProvider(
    create: (context) => LocalizationBloc()..add(LoadSavedLocalization()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationBloc, LocalizationState>(
      builder: (context, state) {
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
          locale: state.locale,
          home: const HomeScreen(),
        );
      },
    );
  }
}
