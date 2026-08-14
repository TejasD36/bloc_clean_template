import '../../../core.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.onTap,
  });

  final TextEditingController? controller;
  final String? hintText;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final field = TextField(
      controller: widget.controller,
      readOnly: widget.onTap != null,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search, size: 20),
        hintText: widget.hintText,
        hintStyle: context.textTheme.bodySmall?.copyWith(
          color: appColors.textMuted,
        ),
        hintMaxLines: 2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: appColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: appColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: context.colors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: context.colors.error),
        ),
      ),
    );

    if (widget.onTap == null) return field;

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: widget.onTap,
      child: AbsorbPointer(child: field),
    );
  }
}

class AppSearchBarDelegate extends SliverPersistentHeaderDelegate {
  const AppSearchBarDelegate({
    required this.controller,
    required this.hintText,
    this.onTap,
  });
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onTap;

  @override
  double get minExtent => 72;

  @override
  double get maxExtent => 72;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: overlapsContent ? 2 : 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: AppSearchBar(
          controller: controller,
          hintText: hintText,
          onTap: onTap,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant AppSearchBarDelegate oldDelegate) {
    return controller != oldDelegate.controller ||
        hintText != oldDelegate.hintText ||
        onTap != oldDelegate.onTap;
  }
}
