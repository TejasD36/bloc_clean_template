import '../../../../../core.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _start();
  }

  Future<void> _start() async {
    final onboardingSeenFuture = sl<SecureStorageService>().read(StorageKeys.onboardingSeen);
    final results = await Future.wait<Object?>([onboardingSeenFuture, Future<void>.delayed(const Duration(milliseconds: 1400))]);

    if (!mounted) return;

    final onboardingSeen = results.first == 'true';
    if (!onboardingSeen) {
      context.go(AppRoute.onboarding.path);
      return;
    }

    context.read<AuthBloc>().add(const AuthEvent.checkAuthentication());
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
      child: const AppScaffold(padding: EdgeInsets.zero, safeArea: false, backgroundColor: Color(0xFF40A8EF), body: _SplashContent()),
    );
  }
}

class _SplashContent extends StatelessWidget {
  const _SplashContent();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final contentWidth = constraints.maxWidth;
        final logoTileSize = (contentWidth * 0.24).clamp(96.0, 124.0);
        final logoImageSize = logoTileSize * 0.46;
        final titleSize = (contentWidth * 0.043).clamp(18.0, 22.0);
        final subtitleSize = (contentWidth * 0.046).clamp(20.0, 24.0);
        final statusSize = (contentWidth * 0.042).clamp(18.0, 22.0);

        return Stack(
          fit: StackFit.expand,
          children: [
            const _SplashWave(),
            Column(
              children: [
                const Spacer(flex: 48),
                _LogoMark(tileSize: logoTileSize, imageSize: logoImageSize),
                const SizedBox(height: 44),
                Text(
                  'Pune Water Helpline',
                  textAlign: TextAlign.center,
                  style: context.textTheme.displaySmall?.copyWith(color: Colors.white, fontSize: titleSize, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Water Solutions at Your Doorstep',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: context.textTheme.headlineLarge?.copyWith(
                        color: Colors.white.withValues(alpha: 0.82),
                        fontSize: subtitleSize,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
                const Spacer(flex: 52),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 72),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                    child: const LinearProgressIndicator(minHeight: 6, color: Color(0xFF75F8E2), backgroundColor: Colors.transparent),
                  ),
                ),
                const SizedBox(height: 42),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'INITIALIZING SYSTEM',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: context.textTheme.headlineMedium?.copyWith(
                      color: Colors.white.withValues(alpha: 0.42),
                      fontSize: statusSize,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 8,
                    ),
                  ),
                ),
                const Spacer(flex: 14),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _LogoMark extends StatelessWidget {
  const _LogoMark({required this.tileSize, required this.imageSize});

  final double tileSize;
  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(tileSize * 0.3),
        border: Border.all(color: Colors.white.withValues(alpha: 0.18)),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.08), blurRadius: 32, offset: const Offset(0, 22))],
      ),
      child: SizedBox(
        width: tileSize,
        height: tileSize,
        child: Center(
          child: Image.asset(Assets.logoAppIcon, width: imageSize, height: imageSize),
        ),
      ),
    );
  }
}

class _SplashWave extends StatelessWidget {
  const _SplashWave();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(child: CustomPaint(painter: _SplashWavePainter()));
  }
}

class _SplashWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final waveTop = size.height * 0.62;
    final shadowPath = Path()
      ..moveTo(0, waveTop + 42)
      ..cubicTo(size.width * 0.25, waveTop - 8, size.width * 0.44, waveTop - 86, size.width, waveTop - 42)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawShadow(shadowPath, const Color(0xFF117FD8).withValues(alpha: 0.7), 18, false);

    final wavePath = Path()
      ..moveTo(0, waveTop + 54)
      ..cubicTo(size.width * 0.28, waveTop + 10, size.width * 0.48, waveTop - 78, size.width, waveTop - 28)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF319AE8), Color(0xFF55B4F5)],
      ).createShader(Offset.zero & size);

    canvas.drawPath(wavePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
