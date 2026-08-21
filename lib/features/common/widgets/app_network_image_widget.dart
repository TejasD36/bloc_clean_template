import '../../../core.dart';

class AppNetworkImageWidget extends StatelessWidget {
  const AppNetworkImageWidget({super.key, required this.url, required this.fit, this.fallback});

  final String url;
  final BoxFit fit;
  final Widget? fallback;

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return fallback ?? const Icon(Icons.image_not_supported_outlined, color: Color(0xFF7A8291));
    }

    return Image.network(
      url,
      fit: fit,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (_, _, _) => fallback ?? const Icon(Icons.image_not_supported_outlined, color: Color(0xFF7A8291)),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Center(
          child: SizedBox(width: 22.w, height: 22.w, child: const CircularProgressIndicator(strokeWidth: 2)),
        );
      },
    );
  }
}
