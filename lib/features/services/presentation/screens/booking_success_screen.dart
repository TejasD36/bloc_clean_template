import '../../../../../core.dart';
import '../../../address/domain/entities/address_entity.dart';
import '../models/booking_success_args.dart';

class BookingSuccessScreen extends StatelessWidget {
  const BookingSuccessScreen({super.key, required this.args});

  final BookingSuccessArgs args;

  @override
  Widget build(BuildContext context) => AppScaffold(
    backgroundColor: const Color(0xFFF7F9FC),
    body: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: Column(
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFEFF6FF),
                border: Border.all(color: const Color(0xFF3B82F6), width: 2),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check, color: Color(0xFF2563EB)),
            ),
            const SizedBox(height: 24),
            Text(
              'Request Submitted',
              textAlign: TextAlign.center,
              style: context.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700, color: const Color(0xFF1E293B)),
            ),
            const SizedBox(height: 24),
            _row('Service Name', args.service.name),
            _row('Service Type', args.serviceType),
            if (args.amount != null) _row('Total Amount', '${args.currency}${args.amount!.toStringAsFixed(0)}'),
            if (args.address != null) _row('Address', _addressText(args.address!)),
            const SizedBox(height: 24),
            Row(
              spacing: 10.w,
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => Utils.callBusiness(context),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 48.h),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      foregroundColor: context.appColors.primary,
                      side: BorderSide(color: context.appColors.primary),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    icon: Icon(Icons.call, size: 14.sp),
                    label: Text("Call", style: TextStyle(fontSize: 14.sp)),
                  ),
                ),
                Expanded(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 48.h),
                    child: ElevatedButton(onPressed: () => context.go(AppRoute.home.path), child: const Text('Back to Home')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );

  Widget _row(String label, String value) => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Color(0xFF6B7280))),
        const SizedBox(width: 16),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );

  String _addressText(AddressEntity address) => [
    address.flatNumberOrBuildingName,
    address.areaStreetName,
    address.city,
    address.pincode,
  ].where((value) => value.trim().isNotEmpty).join(', ');
}
