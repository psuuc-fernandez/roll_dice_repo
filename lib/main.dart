import 'package:flutter/material.dart';

import 'screens/RollDiceScreens.dart';

void main() {
  runApp(RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RollDiceScreen(),
    );
  }
}
