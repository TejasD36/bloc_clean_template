enum AppRoute {
  splash('/'),
  login('/login'),
  register('/register'),
  resetPassword('/reset-password'),
  changePassword('/change-password'),
  home('/home'),
  settings('/settings'),
  profile('/profile');

  const AppRoute(this.path);

  final String path;

  String get routeName => name;
}
