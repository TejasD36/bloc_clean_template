import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core.dart';
import '../../domain/entities/app_version_entity.dart';

class AppUpdateWidget extends StatefulWidget {
  const AppUpdateWidget({
    super.key,
    required this.version,
    this.onPressedSkip,
  });

  final AppVersionEntity version;
  final VoidCallback? onPressedSkip;

  @override
  State<AppUpdateWidget> createState() => _ForceUpdateViewState();
}

class _ForceUpdateViewState extends State<AppUpdateWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  /// Phase 1: Rocket lift
  late Animation<Offset> _rocketLiftAnimation;

  /// Phase 2: Rest of the UI
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<double> _cloudStretchAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    _rocketLiftAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -0.5),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.25, curve: Curves.easeOutBack),
      ),
    );

    _fadeAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.25, 0.45, curve: Curves.easeOut),
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -3),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.45, 1.0, curve: Curves.easeInCubic),
      ),
    );

    _cloudStretchAnimation = Tween<double>(begin: 1.0, end: 1.8).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.45, 1.0, curve: Curves.easeOut),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _updateNowButtonClick() async {
    final url = widget.version.storeUrl;

    if (url == null || url.isEmpty) {
      _showSnackBar('Store URL not available');
      return;
    }

    await _controller.forward();

    final uri = Uri.tryParse(url);

    if (uri != null && await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      _showSnackBar('Unable to open store');
    }

    await Future<void>.delayed(const Duration(seconds: 1));
    _controller.reset();
  }

  void _showSnackBar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
              width: double.infinity,
              child: SlideTransition(
                position: _slideAnimation,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Container(color: AppColor.white),
                    ),
                    Positioned(
                      top: -150,
                      left: 0,
                      right: 0,
                      bottom: 50,
                      child: SlideTransition(
                        position: _slideAnimation,
                        child: Container(color: AppColor.primary),
                      ),
                    ),
                    Positioned(
                      top: -50,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: SlideTransition(
                        position: _slideAnimation,
                        child: _buildAnimatedContent(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedContent() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          top: 450,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.scale(
                scaleX: _cloudStretchAnimation.value,
                scaleY: 1.0,
                alignment: Alignment.center,
                child: child,
              );
            },
            child: Image.asset(
              Assets.imagesForceUpdateCloud,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 350,
          child: SlideTransition(
            position: _rocketLiftAnimation,
            child: SizedBox(
              height: 200,
              width: 200,
              child: Lottie.asset(
                Assets.lottieForceUpdateRocketLaunch,
                repeat: true,
                animate: true,
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: 500,
          bottom: -45,
          child: Image.asset(
            Assets.imagesForceUpdateCloud,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          bottom: 0,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: _buildBottomContent(),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomContent() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'New update is available',
              style: context.textTheme.headlineSmall?.copyWith(
                color: AppColor.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.version.whatsNewMessage ??
                  'The current version of this application is no longer supported. '
                      'We apologize for any inconvenience we may have caused you.',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColor.black,
              ),
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: MediaQuery.widthOf(context),
              child: ElevatedButton(
                onPressed: _updateNowButtonClick,
                child: Text(
                  'Update Now',
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            if (widget.version.isForceUpdate == false)
              TextButton(
                onPressed: widget.onPressedSkip,
                child: Text(
                  'Skip',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: AppColor.black,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}