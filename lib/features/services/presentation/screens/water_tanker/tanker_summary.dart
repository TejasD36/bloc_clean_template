import '../../../../../core.dart';
import '../../../../address/domain/entities/address_entity.dart';
import '../../../domain/entities/tanker_capacity_entity.dart';
import '../../widgets/summary_row.dart';

class TankerSummary extends StatelessWidget {
  const TankerSummary({
    super.key,
    required this.capacity,
    required this.waterType,
    required this.address,
    required this.requiresPayment,
  });

  final TankerCapacityEntity capacity;
  final String waterType;
  final AddressEntity? address;
  final bool requiresPayment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Review your request', style: context.textTheme.headlineMedium),
        const SizedBox(height: 16),
        SummaryRow(label: 'Capacity', value: capacity.title),
        SummaryRow(
          label: 'Estimated price',
          value: '${capacity.currency}${capacity.price.toStringAsFixed(0)}',
        ),
        SummaryRow(label: 'Water type', value: waterType),
        SummaryRow(
          label: 'Address',
          value: address == null
              ? 'Select delivery address'
              : [
                  address!.flatNumberOrBuildingName,
                  address!.areaStreetName,
                  address!.city,
                ].where((value) => value.isNotEmpty).join(', '),
        ),
        SummaryRow(
          label: 'Payment',
          value: requiresPayment ? 'Online payment' : 'Pay later / free',
        ),
      ],
    );
  }
}
