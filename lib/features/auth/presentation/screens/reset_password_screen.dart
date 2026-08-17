import '../../../../../core.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state) {
          case AuthPasswordResetRequested():
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Password reset requested.')));
            context.pop();
          case AuthFailure(:final message):
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
          default:
            break;
        }
      },
      builder: (context, state) {
        final loading = state is AuthLoading;

        return AppScaffold(
          loading: loading,
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(Assets.logoAppIcon, height: 80),
                    const SizedBox(height: 32),
                    Text('Reset password', style: context.textTheme.headlineMedium),
                    const SizedBox(height: 8),
                    Text('Enter your email to start the reset flow.', style: context.textTheme.bodyMedium),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: _required,
                      onFieldSubmitted: (_) => _submit(),
                    ),
                    const SizedBox(height: 24),
                    FilledButton(onPressed: loading ? null : _submit, child: const Text('Request reset')),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String? _required(String? value) {
    if (value == null || value.trim().isEmpty) return 'Required';
    return null;
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    context.read<AuthBloc>().add(AuthEvent.forgotPassword(_emailController.text.trim()));
  }
}
