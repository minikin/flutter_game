# Flutter Game


## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Flutter Game works on iOS, Android, Web, macOS, Linux and Windows._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
  "@@locale": "en",
  "startVeryGoodGame": "Start the Flutter Game",
  "@startVeryGoodGame": {
    "description": "The initial start button of the game application"
  }
}
```

2. Then add a new key/value and description

```arb
{
  "@@locale": "en",
  "startVeryGoodGame": "Start the Flutter Game",
  "@startVeryGoodGame": {
    "description": "The initial start button of the game application"
  },
  "helloWorld": "Hello World",
  "@helloWorld": {
    "description": "Hello World Text"
  }
}
```

3. Use the new string

```dart
import 'package:flutter_game/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
	</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
  "@@locale": "en",
  "startVeryGoodGame": "Start the Flutter Game",
  "@startVeryGoodGame": {
    "description": "The initial start button of the game application"
  }
}
```

`app_es.arb`

```arb
{
  "@@locale": "es",
  "startVeryGoodGame": "Empieza el Muy Buen Juego",
  "@startVeryGoodGame": {
    "description": "El botón de inicio inicial de la aplicación del juego"
  }
}
```

