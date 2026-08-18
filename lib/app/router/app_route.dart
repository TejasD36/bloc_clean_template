enum AppRoute {
  splash('/'),
  onboarding('/onboarding'),
  login('/login'),
  otp('/otp'),
  register('/register'),
  resetPassword('/reset-password'),
  changePassword('/change-password'),
  home('/home'),
  bookings('/bookings'),
  track('/track'),
  profile('/profile');

  const AppRoute(this.path);

  final String path;

  String get routeName => name;
}
