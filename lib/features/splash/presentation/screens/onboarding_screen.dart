import '../../../../../core.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';
import '../../../auth/presentation/bloc/auth_state.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPage = ValueNotifier(0);

  static const List<_OnboardingPageData> _pages = [
    _OnboardingPageData(
      step: 'Step 1: Discover',
      image: Assets.imagesOnboardingImage1,
      eyebrow: 'PUNE WATER HELPLINE',
      title: 'Book Water Tankers Easily',
      description:
          'The official portal for seamless water tanker booking in Pune. Experience reliable delivery with live GPS tracking and quality assurance.',
      bottomBadge: 'REAL-TIME TRACK',
    ),
    _OnboardingPageData(
      step: 'Step 2: Flow',
      image: Assets.imagesOnboardingImage2,
      eyebrow: 'PUNE WATER HELPLINE',
      title: 'Guaranteed Purity',
      description:
          'Every drop is tested and verified. Our advanced purification plants ensure you receive only the cleanest water for your home or business.',
      bottomBadge: 'CERTIFIED 99.9% PURE',
    ),
    _OnboardingPageData(
      step: 'Step 3: Purity',
      image: Assets.imagesOnboardingImage3,
      eyebrow: 'PUNE WATER HELPLINE',
      title: 'Delivered with Care',
      description:
          'Seamless doorstep delivery at your preferred time. Our friendly team ensures a hassle-free experience from order to refill.',
      bottomBadge: 'CERTIFIED 99.9% PURE',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _completeOnboarding() async {
    await sl<SecureStorageService>().save(
      key: StorageKeys.onboardingSeen,
      value: 'true',
    );
    if (!mounted) return;
    context.read<AuthBloc>().add(const AuthEvent.checkAuthentication());
  }

  void _onNextPressed() {
    if (_currentPage.value == _pages.length - 1) {
      _completeOnboarding();
      return;
    }

    _pageController.nextPage(
      duration: const Duration(milliseconds: 280),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state) {
          case AuthAuthenticated():
            context.go(AppRoute.home.path);
          case AuthUnauthenticated() || AuthFailure():
            context.go(AppRoute.login.path);
          default:
            break;
        }
      },
      child: AppScaffold(
        padding: EdgeInsets.zero,
        backgroundColor: context.appColors.primarySoft,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) => _currentPage.value = index,
                itemBuilder: (context, index) => _OnboardingPage(
                  data: _pages[index],
                  onSkip: _completeOnboarding,
                ),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _currentPage,
              builder: (context, index, child) {
                return _PageIndicator(
                  itemCount: _pages.length,
                  currentIndex: index,
                );
              },
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 28.h),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(52),
                  backgroundColor: context.colors.primary,
                  foregroundColor: context.colors.onPrimary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: _onNextPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Next'),
                    SizedBox(width: 8.w),
                    const Icon(Icons.arrow_forward, size: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingPage extends StatelessWidget {
  const _OnboardingPage({required this.data, required this.onSkip});

  final _OnboardingPageData data;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final mediaSize = MediaQuery.sizeOf(context);
    final screenWidth = mediaSize.width;
    final screenHeight = mediaSize.height;
    final imageHeight = (screenHeight * 0.28).clamp(190.0, 280.0);
    final titleSize = (screenWidth * 0.074).clamp(26.0, 32.0);
    final bodySize = (screenWidth * 0.04).clamp(14.0, 16.0);
    final stepSize = (screenWidth * 0.044).clamp(16.0, 18.0);
    final eyebrowSize = (screenWidth * 0.032).clamp(12.0, 14.0);

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  data.step,
                  style: textTheme.displaySmall?.copyWith(
                    color: const Color(0xFF171B21),
                    fontSize: stepSize,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              TextButton(
                onPressed: onSkip,
                child: Text(
                  'Skip',
                  style: textTheme.headlineMedium?.copyWith(
                    color: const Color(0xFF4B5563),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          _OnboardingImageCard(
            image: data.image,
            bottomBadge: data.bottomBadge,
            height: imageHeight,
          ),
          SizedBox(height: 28.h),
          Text(
            data.eyebrow,
            textAlign: TextAlign.center,
            style: textTheme.headlineLarge?.copyWith(
              color: context.colors.primary,
              fontSize: eyebrowSize,
              fontWeight: FontWeight.w500,
              letterSpacing: 4,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: textTheme.displayLarge?.copyWith(
              color: const Color(0xFF171B21),
              fontSize: titleSize,
              fontWeight: FontWeight.w800,
              height: 1.14,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: textTheme.headlineMedium?.copyWith(
              color: const Color(0xFF4B5563),
              fontSize: bodySize,
              fontWeight: FontWeight.w400,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }
}

class _OnboardingImageCard extends StatelessWidget {
  const _OnboardingImageCard({
    required this.image,
    required this.bottomBadge,
    required this.height,
  });

  final String image;
  final String bottomBadge;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            Positioned(
              top: 16,
              right: 14,
              child: _Badge(
                icon: Icons.verified,
                text: 'RELIABLE DELIVERY',
                foregroundColor: context.colors.primary,
              ),
            ),
            Positioned(
              left: 14,
              bottom: 16,
              child: _Badge(
                icon: bottomBadge.contains('TRACK')
                    ? Icons.timer
                    : Icons.verified,
                text: bottomBadge,
                foregroundColor: bottomBadge.contains('TRACK')
                    ? const Color(0xFF007C78)
                    : const Color(0xFF171B21),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({
    required this.icon,
    required this.text,
    required this.foregroundColor,
  });

  final IconData icon;
  final String text;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: foregroundColor, size: 16),
            SizedBox(width: 8.w),
            Text(
              text,
              style: context.textTheme.titleMedium?.copyWith(
                color: foregroundColor,
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PageIndicator extends StatelessWidget {
  const _PageIndicator({required this.itemCount, required this.currentIndex});

  final int itemCount;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final active = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          width: active ? 34 : 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: BoxDecoration(
            color: active ? context.colors.primary : const Color(0xFFC4CDDA),
            borderRadius: BorderRadius.circular(999),
          ),
        );
      }),
    );
  }
}

class _OnboardingPageData {
  const _OnboardingPageData({
    required this.step,
    required this.image,
    required this.eyebrow,
    required this.title,
    required this.description,
    required this.bottomBadge,
  });

  final String step;
  final String image;
  final String eyebrow;
  final String title;
  final String description;
  final String bottomBadge;
}
