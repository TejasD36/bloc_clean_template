# AGENTS.md

## Project Overview

This is a Flutter application built using:

- Flutter
- Dart
- BLoC for state management
- Clean Architecture
- Dependency Injection
- Repository pattern
- DTO → Mapper → Entity separation
- Feature-based project structure

When making changes, preserve the existing architecture and conventions of the project.

---

# General Rules

1. Inspect the existing implementation before modifying or creating files.
2. Follow existing project patterns instead of introducing a new architectural style.
3. Prefer the smallest correct change over large refactors.
4. Do not modify unrelated code.
5. Do not add packages unless they are genuinely necessary.
6. Reuse existing utilities, widgets, services, extensions, themes, constants, and abstractions where possible.
7. Do not duplicate functionality that already exists.
8. Avoid speculative abstractions for requirements that do not currently exist.
9. Keep code readable, maintainable, null-safe, and production-ready.
10. Do not manually modify generated files.

---

# Architecture

Use Clean Architecture boundaries.

Typical dependency direction:

```text
Presentation
↓
Domain
↓
Data
```

Dependencies must point inward.

## Presentation Layer

The presentation layer may contain:

- Screens / Pages
- Widgets
- BLoCs
- Events
- States
- Presentation-specific models if genuinely needed

Presentation must NOT:

- call remote datasources directly
- call local datasources directly
- access Dio directly
- parse API JSON
- contain repository implementation logic
- contain business/data-layer mapping logic

UI should communicate with the application/domain flow through BLoCs and use cases according to the existing project architecture.

---

## Domain Layer

The domain layer may contain:

- Entities
- Repository contracts/interfaces
- Use cases
- Domain value objects when required

Domain code should not depend on:

- Flutter UI
- Dio
- JSON serialization
- API response DTOs
- concrete datasource implementations

Entities should represent application/domain data rather than API transport structures.

---

## Data Layer

The data layer may contain:

- DTOs
- DTO serialization
- Mappers
- Remote datasources
- Local datasources
- Repository implementations
- API-specific models

Keep transport concerns inside the data layer.

Typical flow:

```text
API Response
↓
DTO
↓
Mapper
↓
Entity
↓
Repository
↓
Use Case
↓
BLoC
↓
UI
```

Do not expose DTOs directly to the presentation layer.

---

# Feature Structure

Prefer the existing feature-based structure.

Typical structure:

```text
lib/
├── core/
├── common/
└── features/
    └── feature_name/
        ├── data/
        │   ├── datasources/
        │   ├── dto/
        │   ├── mappers/
        │   └── repositories/
        │
        ├── domain/
        │   ├── entities/
        │   ├── repositories/
        │   └── usecases/
        │
        └── presentation/
            ├── bloc/
            ├── screens/
            └── widgets/
```

Before creating a new directory or architectural layer, inspect similar existing features and follow their structure.

---

# BLoC Rules

Use BLoC as the primary state-management approach.

Keep responsibilities clear:

```text
Event
↓
BLoC
↓
Use Case
↓
Repository
↓
Datasource
```

BLoCs should coordinate application behavior but should not contain low-level networking or persistence logic.

## Events

Events should describe user/system intentions.

Prefer descriptive names such as:

- `LoginSubmitted`
- `SendOtpRequested`
- `ProfileLoadRequested`
- `BookingConfirmed`

Avoid vague names such as:

- `DoLogin`
- `ApiCall`
- `ButtonClicked`
- `UpdateData`

## States

States should represent meaningful UI/application states.

Prefer explicit states such as:

- initial
- loading
- loaded/success
- failure

Do not create unnecessary state classes when existing state conventions already solve the requirement.

Preserve previously loaded data during operations when appropriate instead of unnecessarily resetting the entire state.

## BLoC Side Effects

Use listeners for one-time UI side effects such as:

- navigation
- dialogs
- snackbars
- toasts
- opening external pages

Use builders for rendering UI state.

Avoid triggering navigation directly from `build()`.

---

# Use Cases

Use cases represent application actions.

Examples:

- `LoginUseCase`
- `SendOtpUseCase`
- `GetProfileUseCase`
- `CreateBookingUseCase`

Use cases should generally remain small.

Do not put:

- JSON parsing
- Dio calls
- widget logic
- navigation

inside use cases.

If the existing project uses parameter objects for use cases, continue that convention.

---

# Repository Rules

Repository contracts belong in the domain layer.

Repository implementations belong in the data layer.

Example:

```text
domain/repositories/auth_repository.dart
data/repositories/auth_repository_impl.dart
```

The repository implementation should coordinate datasources and map data-layer objects into domain entities.

Do not bypass repositories by calling datasources from BLoCs.

---

# Datasource Rules

Remote datasources are responsible for communicating with APIs.

They may:

- call the API service
- send DTO/request payloads
- receive DTOs
- handle endpoint-specific transport behavior when appropriate

They should not:

- manage UI state
- navigate
- show dialogs
- depend on widgets

Before adding custom networking behavior, inspect the existing:

- BaseApiService
- API response wrapper
- Dio interceptors
- exception mapping
- response mapper
- ObjectMapper
- repository mapping flow

Do not duplicate generic networking behavior inside individual datasources unless endpoint-specific behavior genuinely requires it.

---

# DTO and Entity Rules

Keep DTOs and entities separate unless the existing architecture explicitly establishes otherwise.

DTOs represent API structures.

Entities represent application/domain structures.

Example:

```text
SendOtpResponseDto
↓ mapper
SendOtpEntity
```

Do not make domain entities depend on:

- `json_serializable`
- Dio
- API response wrappers

Use existing mapping conventions.

---

# JSON Serialization

Use the serialization approach already established by the project.

If the project uses:

- `json_serializable`
- Freezed

continue using them consistently.

Do not manually write repetitive `fromJson` / `toJson` logic when code generation is already established.

Never manually edit generated files such as:

```text
*.g.dart
*.freezed.dart
```

After modifying generated models, run the appropriate build command.

Typically:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Use the project's existing command if it differs.

---

# Dependency Injection

Use the existing dependency-injection system.

Before registering a new dependency:

1. inspect similar registrations
2. determine the correct scope
3. avoid duplicate registrations
4. maintain dependency direction

Typical chain:

```text
Datasource
↓
Repository implementation
↓
Use Case
↓
BLoC
```

Shared/core dependencies should be registered in the appropriate common/core initialization rather than inside unrelated features.

---

# Networking

Use the existing networking abstraction.

Do not instantiate `Dio` directly inside features unless the architecture explicitly requires it.

Reuse:

- API service
- interceptors
- endpoint constants
- request/response wrappers
- error mapping
- authentication handling

Do not globally change networking behavior to solve a single endpoint unless the change is intentionally designed for every endpoint.

Prefer, in order:

1. correct backend/API contract
2. explicit reusable per-request behavior
3. endpoint-specific compatibility handling
4. global networking behavior changes only when clearly justified

Be especially careful with:

- authentication/session handling
- HTTP status handling
- business `status` fields
- error wrappers
- retry behavior
- token refresh
- encryption/decryption interceptors

---

# Error Handling

Use the project's existing error architecture.

Do not introduce raw `try/catch` blocks throughout the application when the project already provides centralized error handling.

Preserve typed failures/exceptions such as the project's existing `AppException` or equivalent.

Do not expose Dio exceptions directly to UI widgets.

Do not silently swallow errors.

Failure states should provide enough information for the UI to behave correctly without leaking infrastructure details.

---

# UI Development

Before creating a new widget:

1. search for an existing reusable widget
2. check the project's design system
3. inspect similar screens

Reuse existing:

- colors
- text styles
- spacing
- buttons
- text fields
- dropdowns
- dialogs
- loaders
- cards
- app bars
- bottom sheets

Avoid hardcoded styling when equivalent theme/design-system values already exist.

Prefer small reusable widgets over very large build methods.

However, do not over-componentize trivial UI.

---

# Responsive UI

Layouts should work across supported phone sizes.

Avoid unnecessary fixed heights and widths.

Prefer:

- constraints
- `Expanded`
- `Flexible`
- `LayoutBuilder`
- scrolling where appropriate
- `SafeArea`

Handle the keyboard correctly on forms.

Avoid layout overflow.

---

# Forms

Keep form state and application state appropriately separated.

Use:

- validation
- correct keyboard types
- text input actions
- focus handling
- reusable input widgets

Do not trigger APIs repeatedly due to rebuilds.

Validate user input before submitting when appropriate.

Dispose controllers and focus nodes owned by stateful widgets.

---

# Navigation

Use the existing navigation solution.

Do not introduce another routing package.

Keep route names/paths centralized if that is the current convention.

Navigation caused by BLoC state changes should normally occur through listeners rather than builders.

---

# Constants and Configuration

Do not scatter:

- API URLs
- route paths
- storage keys
- repeated strings
- magic numbers

through feature implementations.

Use existing constants/configuration abstractions.

Do not hardcode environment-specific values that belong in configuration.

Never commit secrets, API keys, tokens, certificates, or credentials.

---

# Code Quality

Prefer:

- meaningful names
- short focused methods
- immutable data where practical
- `const` constructors where appropriate
- early returns when they improve readability
- existing Dart/Flutter idioms

Avoid:

- unnecessary comments explaining obvious code
- deeply nested conditions
- huge widgets
- huge BLoCs
- duplicated mapping logic
- generic utility classes with unrelated responsibilities
- premature abstractions

---

# Generated Code

Never manually modify generated files.

Common generated files include:

```text
*.g.dart
*.freezed.dart
```

If source annotations/models change, regenerate them using the project's established build command.

---

# Before Implementing a Feature

For non-trivial tasks:

1. Inspect relevant existing files.
2. Trace the current architecture and data flow.
3. Find the closest similar implementation.
4. Identify which layers actually require changes.
5. Avoid touching unaffected layers.
6. Implement the smallest architecture-consistent solution.
7. Format and analyze the resulting code.

Do not create an entirely new architecture for a feature when an existing project pattern already exists.

---

# Validation After Changes

After modifying Dart code, run formatting on affected files.

Prefer:

```bash
dart format <changed-files>
```

After meaningful implementation changes, run:

```bash
flutter analyze
```

Fix issues introduced by your changes.

When relevant tests exist, run the focused tests first rather than the entire suite unnecessarily.

Example:

```bash
flutter test test/features/auth/
```

Run broader tests when the change has broader impact.

Do not claim that code compiles or tests pass unless the relevant command was actually executed successfully.

---

# Package Changes

Do not add dependencies automatically just because a library would make implementation easier.

Before adding a package:

1. check whether the project already solves the problem
2. prefer Flutter/Dart SDK functionality when reasonable
3. verify the package is necessary
4. consider maintenance and architectural impact

If a new package is required, explain why before introducing it when the dependency is significant.

---

# Refactoring

Do not perform large unrelated refactors while implementing a feature or fixing a bug.

Separate necessary changes from optional improvements.

If existing code has unrelated problems, mention them instead of silently rewriting large sections of the project.

---

# Existing Code Is the Primary Convention

This document defines architectural expectations, but the existing codebase is the primary reference for implementation details.

Before choosing:

- naming
- constructors
- Freezed patterns
- BLoC structure
- dependency injection
- exception handling
- API wrappers
- navigation
- widgets
- folder structure

inspect equivalent existing implementations and remain consistent with them.

If this document conflicts with an intentional, established project-specific convention, preserve the existing project convention unless explicitly instructed to refactor it.

---

# Important Restrictions

Unless explicitly requested:

- Do not change architecture globally.
- Do not replace BLoC with another state-management solution.
- Do not bypass use cases/repositories.
- Do not introduce another networking client.
- Do not change API contracts.
- Do not rename public classes/files unnecessarily.
- Do not delete working functionality.
- Do not modify generated code manually.
- Do not add dependencies without a clear need.
- Do not expose secrets.
- Do not run destructive commands.
- Do not modify native Android/iOS configuration unless required by the task.

---

# When Requirements Are Ambiguous

First inspect the existing implementation for clues.

Prefer consistency with existing patterns.

For implementation tasks where a reasonable architecture-consistent assumption can be made, proceed with the safest assumption rather than blocking progress unnecessarily.

Clearly mention important assumptions in the final summary.

---

# Completion Summary

After completing a meaningful coding task, provide a concise summary containing:

- what changed
- important architectural decisions
- files significantly affected
- validation/tests performed
- any unresolved issue or follow-up requirement

Do not provide lengthy explanations for trivial changes.
