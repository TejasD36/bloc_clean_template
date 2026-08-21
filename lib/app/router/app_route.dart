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
  serviceDetails('/services/:slug'),
  bookingSummary('/booking-summary'),
  bottleBookingSummary('/services/water-bottle-jar-delivery/booking-summary'),
  waterTankCleaningOptions('/services/water-tank-cleaning/options'),
  waterTestingPackages('/services/water-testing-laboratory/packages'),
  webView('/webview'),
  bookingSuccess('/booking-success'),
  profile('/profile');

  const AppRoute(this.path);

  final String path;

  String get routeName => name;
}
