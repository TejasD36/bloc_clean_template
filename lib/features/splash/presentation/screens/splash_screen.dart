import '../../../../../core.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';
import '../../../auth/presentation/bloc/auth_state.dart';
import '../../domain/entities/app_version_entity.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_event.dart';
import '../bloc/splash_state.dart';
import '../widgets/app_update_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const _minimumSplashDuration = Duration(milliseconds: 1400);

  late final DateTime _startedAt;

  @override
  void initState() {
    super.initState();

    _startedAt = DateTime.now();

    context.read<SplashBloc>().add(const SplashEvent.load());
  }

  Future<void> _continueStartup() async {
    await _waitForMinimumSplashDuration();

    if (!mounted) return;

    final onboardingSeen = await sl<SecureStorageService>().read(StorageKeys.onboardingSeen);

    if (!mounted) return;

    if (onboardingSeen != 'true') {
      context.go(AppRoute.onboarding.path);
      return;
    }

    context.read<AuthBloc>().add(const AuthEvent.checkAuthentication());
  }

  Future<void> _waitForMinimumSplashDuration() async {
    final elapsed = DateTime.now().difference(_startedAt);

    if (elapsed >= _minimumSplashDuration) return;

    await Future<void>.delayed(_minimumSplashDuration - elapsed);
  }

  Future<void> _handleSplashState(BuildContext context, SplashState state) async {
    switch (state) {
      case SplashLoaded(:final data):
        await _waitForMinimumSplashDuration();

        if (!mounted) return;

        final version = data.version;

        if (version.isUpdateAvailable) {
          await _showUpdateBottomSheet(version);

          return;
        }

        await _continueStartup();

      case SplashFailure(:final message):
        await _waitForMinimumSplashDuration();

        if (!mounted) return;

        _showSplashError(message);

      default:
        break;
    }
  }

  void _handleAuthState(BuildContext context, AuthState state) {
    switch (state) {
      case AuthAuthenticated():
        context.go(AppRoute.home.path);

      case AuthUnauthenticated() || AuthFailure():
        context.go(AppRoute.login.path);

      default:
        break;
    }
  }

  Future<void> _showUpdateBottomSheet(AppVersionEntity version) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      builder: (sheetContext) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: AppUpdateWidget(
            version: version,
            onPressedSkip: () {
              Navigator.of(sheetContext).pop();
              _continueStartup();
            },
          ),
        );
      },
    );
  }

  void _showSplashError(String message) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Something went wrong'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();

                context.read<SplashBloc>().add(const SplashEvent.load());
              },
              child: const Text('Retry'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SplashBloc, SplashState>(listener: _handleSplashState),
        BlocListener<AuthBloc, AuthState>(listener: _handleAuthState),
      ],
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
                SizedBox(height: 44.h),
                Text(
                  'Pune Water Helpline',
                  textAlign: TextAlign.center,
                  style: context.textTheme.displaySmall?.copyWith(color: Colors.white, fontSize: titleSize, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 22.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
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
                  padding: EdgeInsets.symmetric(horizontal: 72.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                    child: const LinearProgressIndicator(minHeight: 6, color: Color(0xFF75F8E2), backgroundColor: Colors.transparent),
                  ),
                ),
                SizedBox(height: 42.h),
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
