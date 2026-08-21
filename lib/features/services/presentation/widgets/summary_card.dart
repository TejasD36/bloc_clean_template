import '../../../../core.dart';
import '../../../address/domain/entities/address_entity.dart';
import '../../domain/entities/tanker_capacity_entity.dart';
import '../../domain/entities/water_type_entity.dart';
import 'section_heading.dart';
import 'summary_item.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.capacity,
    required this.waterType,
    required this.address,
  });

  final TankerCapacityEntity capacity;
  final WaterTypeEntity waterType;
  final AddressEntity address;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            icon: Icons.receipt_long_outlined,
            title: 'Service Summary',
          ),
          const SizedBox(height: 16),
          SummaryItem(
            icon: Icons.water_drop_outlined,
            label: 'Water Type',
            value: waterType.title,
          ),
          SummaryItem(
            icon: Icons.local_shipping_outlined,
            label: 'Capacity',
            value: '${capacity.capacityLiters} L',
          ),
          SummaryItem(
            icon: Icons.currency_rupee,
            label: 'Total Amount',
            value: _money(capacity.price),
            emphasized: true,
          ),
          SummaryItem(
            icon: Icons.location_on_outlined,
            label: 'Address',
            value: _addressText,
          ),
        ],
      ),
    );
  }

  String get _addressText => [
    address.flatNumberOrBuildingName,
    address.areaStreetName,
    address.city,
    address.pincode,
  ].where((value) => value.trim().isNotEmpty).join(', ');

  String _money(double value) =>
      '${capacity.currency}${value.toStringAsFixed(0)}';
}
