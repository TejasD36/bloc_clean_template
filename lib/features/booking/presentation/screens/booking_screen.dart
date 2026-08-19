import '../../../../core.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int _selectedTab = 0;

  static const _upcomingBookings = [
    _BookingItem(title: 'Water Bottle Jar Delivery', quantity: '20 Litre Jar', bookingId: '#PW12345', icon: Icons.water_drop_outlined),
    _BookingItem(title: 'Water Tanker', quantity: '5000 Litre', bookingId: '#PW12345', icon: Icons.local_shipping_outlined),
    _BookingItem(title: 'Water Tanker', quantity: '5000 Litre', bookingId: '#PW12345', icon: Icons.local_shipping_outlined),
  ];

  static const _completedBookings = [
    _BookingItem(title: 'Water Testing', quantity: 'Standard Test', bookingId: '#PW12291', icon: Icons.science_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    final bookings = _selectedTab == 0 ? _upcomingBookings : _completedBookings;
    return AppScaffold(
      padding: EdgeInsets.zero,
      safeArea: false,
      backgroundColor: context.appColors.surfaceSoft,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Bookings',
                style: context.textTheme.displayMedium?.copyWith(
                  color: context.appColors.textStrong,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  height: 1.15,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Track and manage your service bookings',
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.appColors.textMuted,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              _BookingTabs(selectedIndex: _selectedTab, onChanged: (index) => setState(() => _selectedTab = index)),
              const SizedBox(height: 16),
              if (bookings.isEmpty)
                const _EmptyBookings()
              else
                ...bookings.map(
                  (booking) => Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: _BookingCard(booking: booking, onTap: () => _showDetails(context, booking)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  static void _showDetails(BuildContext context, _BookingItem booking) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(booking.title, style: Theme.of(sheetContext).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 8),
              Text('Booking ID: ${booking.bookingId}', style: Theme.of(sheetContext).textTheme.bodyLarge),
              const SizedBox(height: 4),
              Text('Baner, Pune - 411045', style: Theme.of(sheetContext).textTheme.bodyLarge),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookingTabs extends StatelessWidget {
  const _BookingTabs({required this.selectedIndex, required this.onChanged});

  final int selectedIndex;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.appColors.border.withValues(alpha: 0.55), width: 1.5),
      ),
      child: Row(
        crossAxisAlignment: .stretch,
        children: [
          Expanded(
            child: _BookingTab(
              label: 'Upcoming',
              icon: Icons.calendar_month_outlined,
              selected: selectedIndex == 0,
              onTap: () => onChanged(0),
            ),
          ),
          Expanded(
            child: _BookingTab(
              label: 'Completed',
              icon: Icons.check_circle_outline,
              selected: selectedIndex == 1,
              onTap: () => onChanged(1),
            ),
          ),
        ],
      ),
    );
  }
}

class _BookingTab extends StatelessWidget {
  const _BookingTab({required this.label, required this.icon, required this.selected, required this.onTap});

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? context.colors.primary : context.appColors.textMuted;
    return Semantics(
      button: true,
      selected: selected,
      label: '$label bookings',
      child: Material(
        color: selected ? context.appColors.primarySoft : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: color, fontSize: 16, fontWeight: selected ? FontWeight.w700 : FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookingCard extends StatelessWidget {
  const _BookingCard({required this.booking, required this.onTap});

  final _BookingItem booking;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: '${booking.title}, ${booking.quantity}, booking ${booking.bookingId}',
      child: Material(
        color: context.appColors.surface,
        borderRadius: BorderRadius.circular(16),
        elevation: 2,
        shadowColor: context.appColors.shadow,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(color: context.appColors.primarySoft, shape: BoxShape.circle),
                  child: Icon(booking.icon, color: context.colors.primary, size: 30),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        booking.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.titleLarge?.copyWith(
                          color: context.appColors.textStrong,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          height: 1.1,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        booking.quantity,
                        style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.textMuted, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: context.appColors.textMuted,
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                          ),
                          children: [
                            const TextSpan(text: 'Booking ID: '),
                            TextSpan(
                              text: booking.bookingId,
                              style: TextStyle(color: context.colors.primary, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: context.appColors.textMuted, size: 23),
                          const SizedBox(width: 7),
                          Expanded(
                            child: Text(
                              'Baner, Pune - 411045',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.textMuted, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyBookings extends StatelessWidget {
  const _EmptyBookings();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 52),
        child: Column(
          children: [
            Icon(Icons.event_available_outlined, size: 64, color: context.appColors.textDisabled),
            const SizedBox(height: 14),
            Text(
              'No completed bookings yet',
              style: context.textTheme.titleMedium?.copyWith(color: context.appColors.text, fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              'Your completed services will appear here.',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.copyWith(color: context.appColors.textMuted, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookingItem {
  const _BookingItem({required this.title, required this.quantity, required this.bookingId, required this.icon});

  final String title;
  final String quantity;
  final String bookingId;
  final IconData icon;
}
