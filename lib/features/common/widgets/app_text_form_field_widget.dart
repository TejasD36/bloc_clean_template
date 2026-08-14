import '../../../core.dart';

class AppTextFormFieldWidget extends StatelessWidget {
  const AppTextFormFieldWidget({
    super.key,
    this.label,
    this.maxLength,
    this.inputFormatters,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.counterText,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.textCapitalization,
  });

  final String? label;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? counterText;
  final bool obscureText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final TextCapitalization? textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      mainAxisSize: .min,
      spacing: 8,
      children: [
        if (label.isNotNullOrEmpty)
          Text(label!, style: context.textTheme.bodyMedium),
        TextFormField(
          controller: controller,
          style: context.textTheme.bodyLarge?.copyWith(height: 1),
          maxLength: maxLength,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          validator: validator,
          obscureText: obscureText,
          onChanged: onChanged,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 12, right: 6),
                    child: prefixIcon,
                  )
                : null,
            suffixIcon: suffixIcon,
            prefixIconConstraints: const BoxConstraints(maxHeight: 24),
            hintText: hintText,
            hintMaxLines: 2,
            counterText: counterText,
          ),
        ),
      ],
    );
  }
}
