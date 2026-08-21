import '../../../../../core.dart';
import '../../../domain/entities/water_product_entity.dart';
import 'product_image.dart';
import 'quantity_stepper.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.quantity,
    required this.onChanged,
    this.canDelete = false,
  });

  final WaterProductEntity product;
  final int quantity;
  final bool canDelete;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ProductImage(url: product.imageUrl),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (canDelete)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: context.textTheme.titleMedium,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => onChanged(0),
                          child: const Icon(Icons.delete_outline),
                        ),
                      ],
                    )
                  else
                    Text(product.title, style: context.textTheme.titleMedium),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${product.currency}${product.price.toStringAsFixed(2)}',
                        style: TextStyle(color: context.colors.primary),
                      ),
                      QuantityStepper(quantity: quantity, onChanged: onChanged),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
