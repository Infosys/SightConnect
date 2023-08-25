import 'package:hooks_riverpod/hooks_riverpod.dart';

final tumblingTestInstructionProvider =
    StateNotifierProvider<TumblingTestInstructionProvider, TumblingTestState>(
  (ref) => TumblingTestInstructionProvider(),
);

class TumblingTestState {
  final bool overlay;
  final int currentIndex;
  final bool isCheckboxChecked;
  final String buttonText;

  TumblingTestState(
    this.overlay,
    this.currentIndex,
    this.isCheckboxChecked,
    this.buttonText,
  );

  TumblingTestState copyWith({
    bool? overlay,
    int? currentIndex,
    bool? isCheckboxChecked,
    String? buttonText,
  }) {
    return TumblingTestState(
      overlay ?? this.overlay,
      currentIndex ?? this.currentIndex,
      isCheckboxChecked ?? this.isCheckboxChecked,
      buttonText ?? this.buttonText,
    );
  }
}

class TumblingTestInstructionProvider extends StateNotifier<TumblingTestState> {
  TumblingTestInstructionProvider()
      : super(TumblingTestState(true, 0, false, "Skip"));

  void toggleOverlay() {
    state = state.copyWith(overlay: !state.overlay);
  }

  void setCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  void updateCheckbox(bool isChecked) {
    state = state.copyWith(isCheckboxChecked: isChecked);
  }

  void updateButtonText(String text) {
    state = state.copyWith(buttonText: text);
  }

  void updateLoading(bool isLoading) {
    state = state.copyWith(overlay: isLoading);
  }
}
