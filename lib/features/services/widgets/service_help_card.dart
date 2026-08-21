import '../../../core.dart';

class ServiceHelpCard extends StatelessWidget {
  const ServiceHelpCard({
    super.key,
    this.title = 'Need Help Choosing?',
    this.description = 'Talk to our water expert. We are here to help!',
    this.buttonLabel = 'Call',
    this.onTap,
    this.onPressed,
  });

  final String title;
  final String description;
  final String buttonLabel;
  final VoidCallback? onTap;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => Material(
    color: const Color(0xFF312E81),
    borderRadius: BorderRadius.circular(16),
    clipBehavior: Clip.antiAlias,
    child: InkWell(
      onTap: onTap ?? onPressed ?? () => Utils.callBusiness(context),
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 105,
        width: double.maxFinite,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(16).copyWith(right: 100.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 4),
                  Text(description, style: const TextStyle(color: Color(0xFFC7D2FE), fontSize: 11)),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: 70.w,
                    height: 25.h,
                    child: OutlinedButton.icon(
                      onPressed: onPressed ?? onTap ?? () => Utils.callBusiness(context),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),

                      icon: Icon(Icons.call, size: 14.sp),
                      label: Text(buttonLabel, style: TextStyle(fontSize: 14.sp)),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                width: 100.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(Assets.imagesSupportImage)),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
