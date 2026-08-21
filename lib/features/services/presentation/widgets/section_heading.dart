import '../../../../core.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, color: const Color(0xFF1D4ED8), size: 20),
      const SizedBox(width: 8),
      Text(
        title,
        style: TextStyle(
          color: context.appColors.textStrong,
          fontSize: 18.sp,
          fontWeight: FontWeight.w800,
        ),
      ),
    ],
  );
}
