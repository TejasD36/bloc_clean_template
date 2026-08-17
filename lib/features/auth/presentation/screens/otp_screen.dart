import 'dart:async';

import '../../../../../core.dart';
import '../../../common/widgets/app_logo_mark.dart';

class OtpVerificationArgs {
  const OtpVerificationArgs({required this.mobileNumber, this.fullName});

  final String mobileNumber;
  final String? fullName;
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.args});

  final OtpVerificationArgs args;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  static const int _otpLength = 6;
  static const int _resendSeconds = 30;

  final List<TextEditingController> _controllers = List.generate(_otpLength, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(_otpLength, (_) => FocusNode());

  final TextEditingController _otpController = TextEditingController();
  final FocusNode _otpFocusNode = FocusNode();

  Timer? _timer;
  int _secondsRemaining = _resendSeconds;
  bool _verifying = false;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _startCountdown() {
    _timer?.cancel();
    setState(() => _secondsRemaining = _resendSeconds);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining <= 1) {
        timer.cancel();
        setState(() => _secondsRemaining = 0);
        return;
      }
      setState(() => _secondsRemaining--);
    });
  }

  Future<void> _verifyOtp() async {
    final otp = _otpController.text;
    if (!RegExp(r'^\d{6}$').hasMatch(otp)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Enter the 6-digit verification code')));
      return;
    }

    setState(() => _verifying = true);
    await Future<void>.delayed(const Duration(milliseconds: 450));
    if (!mounted) return;
    setState(() => _verifying = false);

    // TODO(backend): Replace with verify OTP endpoint and persisted session.
    context.go(AppRoute.home.path);
  }

  void _resendOtp() {
    if (_secondsRemaining > 0) return;
    _startCountdown();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('OTP sent again')));
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      loading: _verifying,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      appBar: AppBar(),
      backgroundColor: const Color(0xFFF4FAFF),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              const AppLogoMark(),
              const SizedBox(height: 16),
              Text(
                "We've sent a 6-digit verification\ncode to",
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge?.copyWith(color: const Color(0xFF4B5563), fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      '+91 ${_formatMobileNumber(widget.args.mobileNumber)}',
                      textAlign: TextAlign.center,
                      style: context.textTheme.displayLarge?.copyWith(
                        color: const Color(0xFF171B21),
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => context.pop(),
                    icon: const Icon(Icons.edit_outlined, color: Color(0xFF0967B9), size: 20),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              AppOtpField(
                controller: _otpController,
                focusNode: _otpFocusNode,
                length: 6,
                onChanged: (value) {
                  // Optional: handle OTP changes here
                },
                onCompleted: (otp) {
                  FocusScope.of(context).unfocus();

                  // Verify OTP here
                  _verifyOtp();
                },
              ),
              const SizedBox(height: 72),
              TextButton(
                onPressed: _secondsRemaining == 0 ? _resendOtp : null,
                child: Text(
                  _secondsRemaining == 0 ? "Didn't receive a code?  Resend" : "Didn't receive a code?  Resend in ${_secondsRemaining}s",
                  textAlign: TextAlign.center,
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: _secondsRemaining == 0 ? const Color(0xFF0967B9) : const Color(0xFFAEB4BE),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 188),
              ElevatedButton(
                onPressed: _verifyOtp,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [Text('Verify & Continue'), SizedBox(width: 12), Icon(Icons.arrow_forward, size: 32)],
                ),
              ),
              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }

  String _formatMobileNumber(String value) {
    if (value.length != 10) return value;
    return '${value.substring(0, 5)} ${value.substring(5)}';
  }
}
