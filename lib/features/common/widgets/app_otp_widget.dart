import 'package:pinput/pinput.dart';

import '../../../core.dart';

class AppOtpField extends StatelessWidget {
  const AppOtpField({
    super.key,
    required this.controller,
    this.focusNode,
    this.length = 6,
    this.onCompleted,
    this.onChanged,
    this.enableVirtualKeyboard = false,
    this.autofocus = true,
    this.enabled = true,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;

  final int length;

  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onChanged;

  final bool enableVirtualKeyboard;
  final bool autofocus;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 48,
      height: 52,
      textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        color: context.appColors.input,
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(border: Border.all(color: Theme.of(context).colorScheme.primary, width: 1.5)),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(border: Border.all(color: Theme.of(context).colorScheme.error)),
    );

    return Pinput(
      controller: controller,
      focusNode: focusNode,
      length: length,

      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      errorPinTheme: errorPinTheme,

      useNativeKeyboard: !enableVirtualKeyboard,
      closeKeyboardWhenCompleted: false,

      autofocus: !enableVirtualKeyboard && autofocus,
      enabled: enabled,

      autofillHints: const [AutofillHints.oneTimeCode],

      keyboardType: TextInputType.number,

      onChanged: onChanged,
      onCompleted: onCompleted,
    );
  }
}
