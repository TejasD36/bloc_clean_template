enum AppRoute {
  splash('/'),
  onboarding('/onboarding'),
  login('/login'),
  otp('/otp'),
  home('/home'),
  bookings('/bookings'),
  track('/track'),
  address('/address'),
  addAddress('/addAddress'),
  profile('/profile');

  const AppRoute(this.path);

  final String path;

  String get routeName => name;
}
