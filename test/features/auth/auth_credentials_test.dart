import 'package:bloc_clean_template/features/auth/domain/entities/auth_credentials.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('auth credentials', () {
    test('stores email login credentials', () {
      const credentials = LoginCredentials(
        email: 'user@example.com',
        password: 'password',
      );

      expect(credentials.email, 'user@example.com');
      expect(credentials.password, 'password');
    });

    test('stores basic registration credentials', () {
      const credentials = RegisterCredentials(
        name: 'Template User',
        email: 'user@example.com',
        password: 'password',
      );

      expect(credentials.name, 'Template User');
      expect(credentials.email, 'user@example.com');
      expect(credentials.password, 'password');
    });
  });
}
