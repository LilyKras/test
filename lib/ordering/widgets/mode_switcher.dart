import 'package:flutter/material.dart';

class ModeSwitcher extends StatelessWidget {
  const ModeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ModeButton(title: 'Add address', isActive: false),
          ModeButton(title: 'Select address', isActive: true)
        ],
      ),
    );
  }
}

class ModeButton extends StatelessWidget {
  const ModeButton({super.key, required this.title, required this.isActive});
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final modeButtonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: const Color(0xFF919EAB),
      foregroundColor: const Color(0xFFE7ECF0),
      disabledBackgroundColor: const Color(0xFFEA560D),
      disabledForegroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    );
    return ElevatedButton(
      style: modeButtonStyle,
      onPressed: isActive ? () {} : null,
      child: Text(title),
    );
  }
}
