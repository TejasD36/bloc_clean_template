# Pune Water Helpline

Flutter customer application for booking, tracking, and managing water
delivery services in Pune.

## Requirements

- Flutter SDK compatible with the Dart SDK constraint in `pubspec.yaml`
- Android Studio or Xcode for platform builds
- Google Maps API keys configured for Android and iOS

## Run

```bash
flutter pub get
flutter run
```

The API base URL defaults to:

```text
https://slategray-donkey-607049.hostingersite.com/
```

Override it for another environment with:

```bash
flutter run --dart-define=baseUrl=https://example.com/
```

## Authentication

Authentication uses OTP verification. After a successful verification:

- The JWT is stored in secure storage.
- The authenticated user is stored locally in Hive.
- Authenticated requests receive the bearer token through the network interceptor.

### Logout

Logout is handled from the Profile screen using:

```text
POST /api/v1/customer/auth/logout
```

After a successful logout response, the JWT and locally stored user data are
cleared before navigating to the login screen.

### Expired Sessions

Any authenticated API response with HTTP `401` is treated as an expired or
invalid session. The global session handler clears the JWT and user data, then
navigates the user to the login screen. This also handles a failed logout
request caused by an invalid token.

## Project Structure

Feature modules are organized using clean architecture:

```text
lib/features/<feature>/
  data/          Remote/local data sources, DTOs, mappers, repositories
  domain/        Entities, repository contracts, use cases
  presentation/ Screens, widgets, and BLoCs
```

Shared networking, dependency injection, theme, and storage code lives under
`lib/core/`.

## Validation

Run static analysis with:

```bash
flutter analyze
```
