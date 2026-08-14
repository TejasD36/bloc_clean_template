import '../../../domain/entities/auth_credentials.dart';

class LoginRequestDto {
  const LoginRequestDto({required this.email, required this.password});

  factory LoginRequestDto.fromCredentials(LoginCredentials credentials) {
    return LoginRequestDto(
      email: credentials.email,
      password: credentials.password,
    );
  }

  final String email;
  final String password;

  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}

class ForgotPasswordRequestDto {
  const ForgotPasswordRequestDto({required this.email});

  final String email;

  Map<String, dynamic> toJson() => {'email': email};
}

class ResetPasswordRequestDto {
  const ResetPasswordRequestDto({required this.email, required this.password});

  final String email;
  final String password;

  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}

class ChangePasswordRequestDto {
  const ChangePasswordRequestDto({
    this.currentPassword,
    required this.newPassword,
  });

  final String? currentPassword;
  final String newPassword;

  Map<String, dynamic> toJson() => {
    if (currentPassword != null) 'currentPassword': currentPassword,
    'newPassword': newPassword,
  };
}

class RegisterRequestDto {
  const RegisterRequestDto({
    required this.name,
    required this.email,
    required this.password,
  });

  factory RegisterRequestDto.fromCredentials(RegisterCredentials credentials) {
    return RegisterRequestDto(
      name: credentials.name,
      email: credentials.email,
      password: credentials.password,
    );
  }

  final String name;
  final String email;
  final String password;

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
  };
}
