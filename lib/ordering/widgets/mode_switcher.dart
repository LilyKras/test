import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_form/ordering/controllers/mode_controller.dart';
import 'package:test_form/ordering/utils/enums.dart';

class ModeSwitcher extends StatelessWidget {
  const ModeSwitcher({super.key, required this.isSender});
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ModeButton(isSender, title: 'Add address'),
          ModeButton(title: 'Select address', isSender)
        ],
      ),
    );
  }
}

class ModeButton extends HookConsumerWidget {
  const ModeButton(this.isSender, {super.key, required this.title});
  final String title;
  final bool isSender;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final EditModeController controller;
    late final DetailsMode state;

    if (isSender) {
      controller = ref.watch(senderModeProvider.notifier);
      state = ref.watch(senderModeProvider);
    } else {
      controller = ref.watch(recepientModeProvider.notifier);
      state = ref.watch(recepientModeProvider);
    }

    DetailsMode buttonMode = DetailsMode.edit;

    if (title == 'Add address') {
      buttonMode = DetailsMode.add;
    }

    return ElevatedButton(
      style: modeButtonStyle,
      onPressed: buttonMode != state
          ? () {
              controller.changeMode(buttonMode);
            }
          : null,
      child: Text(title),
    );
  }
}

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
