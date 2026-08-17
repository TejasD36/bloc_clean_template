import 'package:bloc_clean_template/features/common/widgets/app_logo_mark.dart';

import '../../../../../core.dart';
import 'otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _mobileController = TextEditingController();
  final _nameController = TextEditingController();

  bool _showNameField = false;
  bool _loading = false;

  @override
  void dispose() {
    _mobileController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    if (_showNameField) {
      _goToOtp(isNewUser: true);
      return;
    }

    setState(() => _loading = true);
    final existingCustomer = await _checkCustomerExists(_mobileController.text.trim());
    if (!mounted) return;
    setState(() => _loading = false);

    if (existingCustomer) {
      _goToOtp(isNewUser: false);
      return;
    }

    setState(() => _showNameField = true);
  }

  Future<bool> _checkCustomerExists(String mobileNumber) async {
    await Future<void>.delayed(const Duration(milliseconds: 450));

    // TODO(backend): Replace with the customer existence / send OTP endpoint.
    return mobileNumber == '9876543210';
  }

  void _goToOtp({required bool isNewUser}) {
    context.pushNamed(
      AppRoute.otp.routeName,
      extra: OtpVerificationArgs(mobileNumber: _mobileController.text.trim(), fullName: isNewUser ? _nameController.text.trim() : null),
    );
  }

  void _editMobileNumber() {
    setState(() {
      _showNameField = false;
      _nameController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      loading: _loading,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      backgroundColor: const Color(0xFFF4FAFF),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AppLogoMark(),
                const SizedBox(height: 16),
                Text(
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: context.textTheme.headlineLarge?.copyWith(
                    color: const Color(0xFF171B21),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Refresh your day with pure\nwater, delivered to your door.',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF4B5563),
                    height: 1.45,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 112),
                _LoginFormCard(
                  mobileController: _mobileController,
                  nameController: _nameController,
                  showNameField: _showNameField,
                  onEditMobile: _editMobileNumber,
                  onSubmit: _submit,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginFormCard extends StatelessWidget {
  const _LoginFormCard({
    required this.mobileController,
    required this.nameController,
    required this.showNameField,
    required this.onEditMobile,
    required this.onSubmit,
  });

  final TextEditingController mobileController;
  final TextEditingController nameController;
  final bool showNameField;
  final VoidCallback onEditMobile;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.12), blurRadius: 18, offset: const Offset(0, 10))],
      ),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            AppTextFormFieldWidget(
              label: 'Mobile Number',
              controller: mobileController,
              readOnly: showNameField,
              maxLength: 10,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) => InputValidators.mobileNumber(
                value,
                emptyMessage: 'Enter your mobile number',
                invalidMessage: 'Enter a valid 10-digit mobile number',
              ),
              hintText: '98765 43210',
              counterText: '',
              prefixIcon: const _CountryCodePrefix(),
              suffixIcon: showNameField
                  ? IconButton(
                      onPressed: onEditMobile,
                      icon: const Icon(Icons.edit, color: Color(0xFF0967B9), size: 20),
                    )
                  : null,
            ),
            if (showNameField) ...[
              const SizedBox(height: 28),
              AppTextFormFieldWidget(
                label: 'Full Name',
                controller: nameController,
                textInputAction: TextInputAction.done,
                textCapitalization: TextCapitalization.words,
                validator: (value) =>
                    InputValidators.fullName(value, emptyMessage: 'Enter your full name', invalidMessage: 'Enter a valid full name'),
                onFieldSubmitted: (_) => onSubmit(),
                hintText: 'Enter Your Name',
                counterText: '',
              ),
            ],
            const SizedBox(height: 42),
            ElevatedButton(
              onPressed: onSubmit,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [Text('Get OTP'), SizedBox(width: 12), Icon(Icons.arrow_forward, size: 20)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CountryCodePrefix extends StatelessWidget {
  const _CountryCodePrefix();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '+91',
            style: context.textTheme.titleLarge?.copyWith(color: const Color(0xFF171B21), fontWeight: FontWeight.w800),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.keyboard_arrow_down, size: 22),
          const SizedBox(width: 4),
          const SizedBox(height: 54, child: VerticalDivider(color: Color(0xFFC7CDDA), thickness: 1.6)),
        ],
      ),
    );
  }
}
