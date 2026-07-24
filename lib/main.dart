import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/util/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //this line is used to system based theme, system detect dark and light mode
      themeMode: ThemeMode.system,
      theme: EApptheme.lightTheme,
      darkTheme: EApptheme.darkTheme,
    );
  }
}
