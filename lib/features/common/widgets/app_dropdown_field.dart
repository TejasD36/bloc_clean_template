import '../../../core.dart';

class AppDropdownItem<T> {
  const AppDropdownItem({required this.value, required this.label});

  final T value;
  final String label;
}

class AppDropdownField<T> extends StatelessWidget {
  const AppDropdownField({
    required this.label,
    required this.hint,
    required this.items,
    required this.onChanged,
    super.key,
    this.prefixIcon,
    this.initialValue,
    this.validator,
    this.enabled = true,
    this.isExpanded = true,
  });

  final String label;
  final String hint;
  final T? initialValue;
  final List<AppDropdownItem<T>> items;
  final ValueChanged<T?> onChanged;
  final IconData? prefixIcon;
  final FormFieldValidator<T>? validator;
  final bool enabled;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final hasValidInitialValue =
        initialValue == null || items.any((item) => item.value == initialValue);
    final appColors = context.appColors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Text(label, style: context.textTheme.bodyMedium),
        DropdownButtonFormField<T>(
          initialValue: hasValidInitialValue ? initialValue : null,
          isExpanded: isExpanded,
          hint: Text(hint, overflow: TextOverflow.ellipsis),
          icon: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: appColors.textMuted,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
            prefixIconConstraints: const BoxConstraints(maxHeight: 24),
          ),
          items: items
              .map(
                (item) => DropdownMenuItem<T>(
                  value: item.value,
                  child: Text(
                    item.label,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
          onChanged: enabled && items.isNotEmpty ? onChanged : null,
          validator: validator,
        ),
      ],
    );
  }
}
