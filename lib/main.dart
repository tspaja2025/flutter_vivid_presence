import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/router/router.dart';
import 'package:flutter_vivid_presence/theme/vivid_presence_theme.dart';

void main() {
  runApp(const FlutterVividPresence());
}

class FlutterVividPresence extends StatelessWidget {
  const FlutterVividPresence({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Vivid Presence',
      theme: VividPresenceTheme.lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}
