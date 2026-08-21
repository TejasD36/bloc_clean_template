import '../../../../../core.dart';
import '../../../domain/entities/tanker_capacity_entity.dart';

class CapacityCard extends StatelessWidget {
  const CapacityCard({
    super.key,
    required this.capacity,
    required this.selected,
    required this.onTap,
  });

  final TankerCapacityEntity capacity;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0x4DC0C6D6), width: 1),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0D005AB3),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 128,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFECEEF1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: AppNetworkImageWidget(
                      url: capacity.imageUrl.buildStorageUrl,
                      fit: BoxFit.cover,
                      fallback: const Icon(
                        Icons.local_shipping_outlined,
                        size: 64,
                        color: Color(0xFF005AB3),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    capacity.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xFF191C1E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    capacity.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF414754),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '${capacity.currency}${capacity.price.toStringAsFixed(0)}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: const Color(0xFF005AB3),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            if (selected)
              Positioned(
                left: 1.w,
                top: 0,
                bottom: 0,
                child: Container(
                  width: 4.w,
                  margin: EdgeInsets.symmetric(vertical: 3.h),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                    ),
                    color: context.appColors.primary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
