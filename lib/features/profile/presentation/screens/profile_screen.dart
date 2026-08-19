import '../../../../core.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      safeArea: true,
      backgroundColor: context.appColors.surfaceSoft,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: context.textTheme.displayMedium?.copyWith(
                color: context.appColors.textStrong,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                height: 1.15,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Manage your account and preferences',
              style: context.textTheme.labelLarge?.copyWith(color: context.appColors.textMuted, fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 28),
            _SupportBanner(onTap: () => _showMessage(context, 'Support contact coming soon')),
            const SizedBox(height: 34),
            const _SectionTitle(title: 'My Information'),
            const SizedBox(height: 14),
            _ProfileCard(
              children: [
                _ProfileRow(
                  icon: Icons.location_on_outlined,
                  title: 'Address',
                  subtitle: 'Baner, Pune - 411045, Maharashtra',
                  onTap: () => _showMessage(context, 'Address editing coming soon'),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const _SectionTitle(title: 'Settings & Policies'),
            const SizedBox(height: 14),
            _ProfileCard(
              children: [
                _ProfileRow(
                  icon: Icons.shield_outlined,
                  title: 'Privacy Policy',
                  onTap: () => _showMessage(context, 'Privacy Policy coming soon'),
                ),
                const _ProfileDivider(),
                _ProfileRow(
                  icon: Icons.description_outlined,
                  title: 'Terms & Conditions',
                  onTap: () => _showMessage(context, 'Terms & Conditions coming soon'),
                ),
                const _ProfileDivider(),
                _ProfileRow(icon: Icons.info_outline, title: 'About Us', onTap: () => _showMessage(context, 'About Us coming soon')),
              ],
            ),
            const SizedBox(height: 32),
            _ProfileCard(
              children: [
                _ProfileRow(
                  icon: Icons.logout,
                  title: 'Log Out',
                  foregroundColor: context.appColors.error,
                  iconBackgroundColor: context.appColors.error.withValues(alpha: 0.08),
                  onTap: () => _confirmLogout(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  static Future<void> _confirmLogout(BuildContext context) async {
    final shouldLogout = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Log out?'),
        content: const Text('Are you sure you want to log out of your account?'),
        actions: [
          TextButton(onPressed: () => dialogContext.pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => dialogContext.pop(true), child: const Text('Log Out')),
        ],
      ),
    );
    if (shouldLogout == true && context.mounted) {
      _showMessage(context, 'You have been logged out');
    }
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.titleMedium?.copyWith(color: context.appColors.textStrong, fontSize: 20, fontWeight: FontWeight.w800),
    );
  }
}

class _SupportBanner extends StatelessWidget {
  const _SupportBanner({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final primary = context.colors.primary;
    return Material(
      color: primary,
      borderRadius: BorderRadius.circular(16),
      elevation: 3,
      shadowColor: primary.withValues(alpha: 0.20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.18), shape: BoxShape.circle),
                child: const Icon(Icons.headset_mic_outlined, color: Colors.white, size: 25),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Need Help?',
                      style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 2),
                    Text("We're here to help you", style: TextStyle(color: Colors.white.withValues(alpha: 0.90), fontSize: 12)),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 40, maxWidth: 150),
                child: FilledButton(
                  onPressed: onTap,
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: primary,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Contact Support', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                      SizedBox(width: 2),
                      Icon(Icons.chevron_right, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.appColors.surface,
      borderRadius: BorderRadius.circular(16),
      elevation: 1,
      shadowColor: context.appColors.shadow,
      clipBehavior: Clip.antiAlias,
      child: Column(children: children),
    );
  }
}

class _ProfileRow extends StatelessWidget {
  const _ProfileRow({
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle,
    this.foregroundColor,
    this.iconBackgroundColor,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final Color? foregroundColor;
  final Color? iconBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final primary = foregroundColor ?? context.colors.primary;
    return Semantics(
      button: true,
      label: subtitle == null ? title : '$title, $subtitle',
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: iconBackgroundColor ?? context.appColors.primarySoft, shape: BoxShape.circle),
                child: Icon(icon, color: primary, size: 20),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: context.textTheme.titleLarge?.copyWith(
                        color: foregroundColor ?? context.appColors.textStrong,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 3),
                      Text(
                        subtitle!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.textMuted, fontSize: 14),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.chevron_right, color: context.appColors.textDisabled, size: 28),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileDivider extends StatelessWidget {
  const _ProfileDivider();

  @override
  Widget build(BuildContext context) => Divider(height: 1, thickness: 1, color: context.appColors.divider.withValues(alpha: 0.55));
}
