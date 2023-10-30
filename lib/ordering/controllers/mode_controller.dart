import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_form/ordering/utils/enums.dart';

final senderModeProvider =
    StateNotifierProvider.autoDispose<EditModeController, DetailsMode>(
  (ref) => EditModeController(),
);

final recepientModeProvider =
    StateNotifierProvider.autoDispose<EditModeController, DetailsMode>(
  (ref) => EditModeController(),
);

class EditModeController extends StateNotifier<DetailsMode> {
  EditModeController() : super(DetailsMode.add);

  void changeMode(DetailsMode mode) {
    state = mode;
  }
}
