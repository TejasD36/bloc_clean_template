import '../../../../../core.dart';
import '../../../../address/domain/entities/address_entity.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key, required this.address});
  final AddressEntity address;

  @override
  Widget build(BuildContext context) => Card(
    child: ListTile(
      leading: const Icon(Icons.location_on_outlined),
      title: const Text('Delivery Address'),
      subtitle: Text(
        [
          address.flatNumberOrBuildingName,
          address.areaStreetName,
          address.city,
          address.pincode,
        ].where((value) => value.isNotEmpty).join(', '),
      ),
    ),
  );
}
