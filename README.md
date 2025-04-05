# Flutter Todos

A modern Flutter todo-list application implementing layered architecture with BLoC state management.

## Overview

This application showcases best practices for Flutter development including:
- Layered architecture
- BLoC pattern for state management
- Custom packages
- Local database integration
- Internationalization
- Flavor configurations for different environments

The project was inspired by the official [Flutter Todos Tutorial](https://bloclibrary.dev/tutorials/flutter-todos/).

## Screenshots

[Consider adding screenshots of your app here]

## Features

- Create, read, update, and delete todos
- Mark todos as completed
- Filter todos by status
- Persistent storage using local database
- Multi-language support
- Environment-specific configurations





### Installation

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/todos.git
   cd todos
   ```

2. Install dependencies
   ```bash
   flutter pub get
   ```

3. Update package versions if necessary

4. Generate required files
   ```bash
   # Generate code for packages and models
   dart pub run build_runner build --delete-conflicting-outputs
   
   # Generate localization files
   flutter gen-l10n
   ```

### Running the App

Run the application using the appropriate flavor:

```bash
# Development
flutter run --flavor development --target lib/main_development.dart

# Staging
flutter run --flavor staging --target lib/main_staging.dart

# Production
flutter run --flavor production --target lib/main_production.dart
```

### Testing

Run the test suite with:

```bash
flutter test --coverage --test-randomize-ordering-seed random
```

## APK

A prebuilt APK is available at:
```
build/app/outputs/flutter-apk/app-release.apk (21.1MB)
```

## Project Structure

```
lib/
  ├── app/                  # Application layer
  ├── domain/               # Domain/business logic layer
  ├── data/                 # Data layer
  ├── presentation/         # UI layer
  ├── l10n/                 # Localization
  ├── main_development.dart # Entry point for development
  ├── main_staging.dart     # Entry point for staging
  ├── main_production.dart  # Entry point for production
```

## Architecture

This application follows a layered architecture:
- **Presentation Layer**: UI components and BLoC state management
- **Domain Layer**: Business logic and entities
- **Data Layer**: Data sources, repositories, and models




