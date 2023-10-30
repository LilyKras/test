import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_form/core/domain/models/theme/light_theme.dart';
import 'package:test_form/ordering/pages/first_step_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ordering',
        theme: createLightTheme(),
        home: const FirstStepPage());
  }
}
