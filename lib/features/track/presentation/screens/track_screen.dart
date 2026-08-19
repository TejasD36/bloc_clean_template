import '../../../../core.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      safeArea: false,
      backgroundColor: const Color(0xFFF7F9FB),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'Track',
                style: context.textTheme.displayMedium?.copyWith(
                  color: context.appColors.textStrong,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  height: 1.15,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Check status of ongoing orders',
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.appColors.textMuted,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 28),
              _TrackingPanel(onCall: () => _message(context, 'Calling Ramesh Kumar'), onRoute: () => _routeSheet(context)),
            ],
          ),
        ),
      ),
    );
  }

  static void _message(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  static void _routeSheet(BuildContext context) {
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
              Text('Detailed Route', style: Theme.of(sheetContext).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 8),
              const Text('The tanker is heading to Baner, Pune via Highway 48.'),
            ],
          ),
        ),
      ),
    );
  }
}

class _TrackingPanel extends StatelessWidget {
  const _TrackingPanel({required this.onCall, required this.onRoute});

  final VoidCallback onCall;
  final VoidCallback onRoute;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xF2F7F9FB),
      borderRadius: BorderRadius.circular(12),
      elevation: 5,
      shadowColor: Colors.black.withValues(alpha: 0.40),
      child: SizedBox(
        width: double.infinity,
        height: 380,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _OrderHeader(),
              const SizedBox(height: 16),
              _DriverProfile(onCall: onCall),
              const SizedBox(height: 16),
              const _StatusTimeline(),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                height: 36,
                child: FilledButton(
                  onPressed: onRoute,
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF0058BE),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  child: const Text('View Detailed Route'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderHeader extends StatelessWidget {
  const _OrderHeader();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track Your Water',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Color(0xFF191C1E), fontSize: 24, fontWeight: FontWeight.w600, height: 1.33),
                ),
                Text(
                  'Order #RD-24832',
                  style: TextStyle(color: Color(0xFF424754), fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.7, height: 1.43),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            height: 24,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(color: const Color(0x4D64A8FE), borderRadius: BorderRadius.circular(9999)),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.circle, color: Color(0xFF0060AC), size: 8),
                SizedBox(width: 4),
                Text(
                  '12,000 L',
                  style: TextStyle(color: Color(0xFF003C70), fontSize: 12, fontWeight: FontWeight.w500, height: 1.33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DriverProfile extends StatelessWidget {
  const _DriverProfile({required this.onCall});

  final VoidCallback onCall;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: Color(0xFFF2F4F6), borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(color: Color(0xFFEAF3FF), shape: BoxShape.circle),
                child: const Icon(Icons.person, color: Color(0xFF0058BE), size: 34),
              ),
              Positioned(
                right: -4,
                bottom: -4,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0058BE),
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFFF2F4F6), width: 2),
                  ),
                  child: const Icon(Icons.verified, color: Colors.white, size: 11),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ramesh Kumar',
                  style: TextStyle(color: Color(0xFF191C1E), fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
                ),
                Text(
                  'MH 12 AB\n3456',
                  style: TextStyle(color: Color(0xFF424754), fontSize: 12, fontWeight: FontWeight.w500, height: 1.33),
                ),
              ],
            ),
          ),
          Material(
            color: const Color(0xFF0058BE),
            shape: const CircleBorder(),
            elevation: 2,
            child: InkWell(
              onTap: onCall,
              customBorder: const CircleBorder(),
              child: const SizedBox(width: 40, height: 40, child: Icon(Icons.phone_outlined, color: Colors.white, size: 20)),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusTimeline extends StatelessWidget {
  const _StatusTimeline();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
      child: Stack(
        children: [
          Positioned(
            left: 11,
            top: 24,
            bottom: 30,
            child: SizedBox(width: 2, child: ColoredBox(color: Color(0x330058BE))),
          ),
          Column(
            children: [
              _StatusStep(icon: Icons.check, title: 'Order Confirmed', detail: '10:45 AM', state: _StatusState.complete),
              _StatusStep(
                icon: Icons.local_shipping_outlined,
                title: 'Tanker Dispatched',
                detail: 'Heading towards your location via Highway 48',
                eta: '12 mins',
                state: _StatusState.active,
              ),
              _StatusStep(
                icon: Icons.circle,
                title: 'Arriving at Destination',
                detail: 'Koregaon Park, Block B',
                state: _StatusState.pending,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum _StatusState { complete, active, pending }

class _StatusStep extends StatelessWidget {
  const _StatusStep({required this.icon, required this.title, required this.detail, required this.state, this.eta});

  final IconData icon;
  final String title;
  final String detail;
  final _StatusState state;
  final String? eta;

  @override
  Widget build(BuildContext context) {
    final pending = state == _StatusState.pending;
    final active = state == _StatusState.active;
    final color = pending ? const Color(0xFF424754) : const Color(0xFF0058BE);
    return SizedBox(
      height: 36,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: pending ? const Color(0xFFE0E3E5) : color,
              shape: BoxShape.circle,
              border: pending
                  ? Border.all(color: const Color(0xFFC2C6D6))
                  : active
                  ? Border.all(color: const Color(0x332170E4), width: 4)
                  : null,
            ),
            child: Icon(icon, color: pending ? const Color(0xFF727785) : Colors.white, size: pending ? 8 : 14),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.7, height: 1.43),
                      ),
                      Text(
                        detail,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: active ? const Color(0xCC0058BE) : const Color(0xFF424754),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 1.33,
                        ),
                      ),
                    ],
                  ),
                ),
                if (eta != null) const SizedBox(width: 8),
                if (eta != null)
                  const Text(
                    '12 mins',
                    style: TextStyle(color: Color(0xFF0058BE), fontSize: 12, fontWeight: FontWeight.w600, height: 1.33),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
