import 'package:fl_tech_rescue/screens/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.highContrastDark(),
  // colorScheme: ColorScheme.fromSeed(
  //   brightness: Brightness.dark,
  //   seedColor: const Color.fromARGB(255, 131, 57, 0),
  // ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const TabsScreen(),
    );
  }
}

//TODO: Fix icon launcher; may have to change icon
//
//TODO: Finish STC sections
//  Icons per section
//
//TODO: ANDROID RELEASE:
//  Configure server APK: MIME-TYPE [application/vnd.android.package-archive].
//  Prepare your application for release.
//  Host the release-ready APK file on your server and provide a download link to users.
//
// TODO: IOS RELEASE:
//  Prepare your application for release.
//  Host the release-ready APK; provide a download link to users.
//  Configure server APK: MIME-TYPE.
//
// * see gpt instructions for details on steps to take