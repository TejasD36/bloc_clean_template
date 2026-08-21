# Common UI And Theme Reference

Use this document before adding a widget, form control, color, text style, or
screen scaffold. Update it when shared UI behavior changes.

## Preferred Imports And Access

Most feature files import `../../../../core.dart` or the equivalent relative
path. That barrel exposes Flutter, BLoC, routing, screen utilities, theme
extensions, and `features/common/xcore.dart`.

Use the theme through `BuildContext`:

```dart
final colors = context.colors; // Material ColorScheme
final appColors = context.appColors; // AppPalette extension
final textTheme = context.textTheme;
```

Prefer `context.appColors` and `context.colors` over new hardcoded colors.
Prefer `context.textTheme` over creating a new `TextStyle` when an existing
semantic style fits. Use `copyWith` only for a deliberate local variation.

## Shared Widgets

### `AppScaffold`

Path: `lib/features/common/widgets/app_scaffold.dart`

Use as the default screen scaffold. It provides:

- optional `SafeArea` with independent top/bottom controls
- consistent body padding, defaulting to horizontal `20`
- optional pull-to-refresh through `onRefresh`
- keyboard dismissal on outside tap by default
- solid or gradient background
- loading overlay and custom full-screen overlay
- standard `Scaffold` slots: app bar, drawers, bottom navigation, bottom
  sheet, FAB, persistent footer, and body resize behavior

Important: set `padding: EdgeInsets.zero` when a screen owns its own edge
padding. Set `safeArea: false` only when the screen deliberately handles
system insets itself.

### `AppTextFormFieldWidget`

Path: `lib/features/common/widgets/app_text_form_field_widget.dart`

Use for standard labeled form inputs. It supports:

- optional label and hint
- controller, validation, max length, formatters, keyboard type
- prefix/suffix widgets
- obscured and read-only modes
- capitalization, input action, change, and submit callbacks

The field uses `InputDecorationTheme`; do not duplicate border, fill, or hint
styling at call sites unless a screen genuinely needs a special treatment.

### `AppDropdownField<T>` and `AppDropdownItem<T>`

Path: `lib/features/common/widgets/app_dropdown_field.dart`

Use for labeled dropdown form controls. `AppDropdownItem<T>` keeps the domain
value separate from its displayed label. The field supports initial value,
prefix icon, validation, enabled state, and expanded layout.

### `AppSearchBar`

Path: `lib/features/common/widgets/app_search_bar.dart`

Use for search inputs and tappable search launchers. It supports:

- optional controller and hint
- change and submit callbacks
- read-only/tap mode for launching a separate search flow
- loading indicator

`AppSearchBarDelegate` provides a fixed `72` pixel sliver header with standard
horizontal padding and elevation while content overlaps it.

### `AppOtpField`

Path: `lib/features/common/widgets/app_otp_widget.dart`

Use for OTP entry. It is backed by `pinput` and supports configurable length,
controller, focus node, completion/change callbacks, virtual keyboard mode,
autofocus, and enabled state. It uses theme colors for default, focused, and
error states.

### `AppLogoMark`

Path: `lib/features/common/widgets/app_logo_mark.dart`

Use for the shared water-drop logo mark, currently sized at `90x90` with a
smaller rotated gradient mark inside. It is used by authentication screens.
It is not currently exported from `features/common/xcore.dart`; import its
file directly or export it when the common barrel is next updated.

## Forms And Extensions

### `InputValidators`

Path: `lib/features/common/form/input_validators.dart`

Central validators currently include:

- `required`
- `mobileNumber` for exactly 10 digits
- `email`
- `emailOrMobile`
- `password` with minimum length 8
- `fullName` with English/Marathi letters and supported punctuation
- `text` with English/Marathi letters and spaces

Messages are passed by the caller so validation remains localizable.

### `input_formatters.dart`

Path: `lib/features/common/form/input_formatters.dart`

Currently empty. Do not add one-off formatter implementations in feature
folders if a formatter becomes shared; add it here and document it.

### `StringExtensions`

Path: `lib/features/common/extensions/string_extensions.dart`

- `isNotNullOrEmpty` safely checks nullable strings.
- `toMarathiDigits` converts English digits to Marathi digits and returns an
  empty string for null/empty input.

### `CustomerServiceSlug`

Path: `lib/features/common/domain/enums/customer_service_slug.dart`

This is the centralized mapping between backend service slugs and typed app
values. Use `CustomerServiceSlug.fromValue(...)` instead of scattering slug
string comparisons. Keep the backend spelling, including `water-softner`,
unchanged unless the API contract changes.

## Common Settings State

### Business settings

Files:

- `domain/entities/business_settings_entity.dart`
- `data/models/dtos/business_settings_dto.dart`
- `data/models/mappers/business_settings_mapper.dart`
- `services/business_settings_store.dart`
- `dependencies/common_dependencies.dart`

`BusinessSettingsEntity` contains app email, phone, currency symbol, privacy
policy, terms, and about-us content. `BusinessSettingsStore` is a lazy
singleton in GetIt with `settings`, `hasSettings`, `setSettings`, and `clear`.
Keep API DTOs and domain entities separate.

## Theme Architecture

### `AppTheme`

Path: `lib/app/theme/app_theme.dart`

`AppTheme.light` and `AppTheme.dark` build Material 3 themes. The theme
configures:

- `ColorScheme`
- `AppPalette` as a `ThemeExtension`
- app bar, card, dialog, snackbar, divider, button, input, checkbox, switch,
  radio, icon button, list tile, bottom navigation, progress, and selection
  themes
- transparent status bar and brightness-aware system UI icons

Shared corner radii are currently `4`, `8`, and `16`. Use the configured
component themes before adding local shape or padding values.

### `AppPalette`

Path: `lib/app/theme/app_palette.dart`

`AppPalette` is the preferred semantic color layer and supports light/dark
variants plus interpolation. Available semantic tokens include:

`primary`, `primarySoft`, `secondary`, `success`, `warning`, `error`,
`scaffold`, `appBar`, `surface`, `surfaceRaised`, `surfaceSoft`, `input`,
`border`, `divider`, `text`, `textStrong`, `textMuted`, `textDisabled`,
`onPrimary`, `onSecondary`, `overlay`, and `shadow`.

### `AppColor`

Path: `lib/app/theme/app_color.dart`

`AppColor` contains fixed brand, semantic, neutral, legacy custom colors, and
`primaryGradient`. Prefer `AppPalette` for new theme-aware UI. Use `AppColor`
only when a fixed color is required by an existing asset, system UI, or legacy
screen.

### `AppTypography`

Path: `lib/app/theme/app_typography.dart`

The app uses the default Flutter font because `fontFamily` is currently null.
The configured scale is:

| Text style | Size | Weight |
| --- | ---: | --- |
| `displayLarge` | 32 | 700 |
| `displayMedium` | 28 | 700 |
| `displaySmall` | 24 | 700 |
| `headlineLarge` | 24 | 600 |
| `headlineMedium` | 22 | 600 |
| `headlineSmall` | 20 | 600 |
| `titleLarge` | 18 | 600 |
| `titleMedium` | 16 | 500 |
| `titleSmall` | 14 | 500 |
| `bodyLarge` | 16 | 400 |
| `bodyMedium` | 14 | 400 |
| `bodySmall` | 12 | 400 |
| `labelLarge` | 14 | 500 |
| `labelMedium` | 12 | 500 |
| `labelSmall` | 11 | 500 |

## Reuse Rules For New Screens

1. Start with `AppScaffold` and configure padding/safe area deliberately.
2. Use `AppPalette`, `ColorScheme`, and `TextTheme` through `BuildContext`.
3. Reuse the common form widgets before creating a new field wrapper.
4. Use `InputValidators` for shared validation behavior.
5. Use the centralized `CustomerServiceSlug` enum for service routing and
   payload selection.
6. Add a new common widget only when it is used by more than one feature or
   clearly represents an application-wide interaction.
7. Update this document whenever a shared widget, token, or convention changes.

## Known Follow-ups

- Export `app_logo_mark.dart` from `lib/features/common/xcore.dart` for
  consistent barrel usage.
- Add shared input formatters to `form/input_formatters.dart` when required.
- Consolidate remaining screen-level hardcoded colors into semantic palette
  tokens as those screens are revisited.
