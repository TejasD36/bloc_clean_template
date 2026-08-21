import '../../../../../core.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) => Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      color: const Color(0xFFECEEF0),
      borderRadius: BorderRadius.circular(8),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AppNetworkImageWidget(
        url: url.buildStorageUrl,
        fit: BoxFit.cover,
        fallback: const Icon(
          Icons.water_drop_outlined,
          color: Color(0xFF0058BE),
          size: 32,
        ),
      ),
    ),
  );
}
