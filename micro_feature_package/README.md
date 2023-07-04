# micro_feature_package

Developed with 💙 by [Pedro Zaroni][mugbug]

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

Opinionated flutter package for a micro feature.

## What's Included ✨

Out of the box, this template includes:

- ✅ Dependency Injection Structure - Opinionated structure to handle compile-time safe dependency injection between packages via Composition Root pattern.
- ✅ Opinionated code structure to implement a simple feature - The code is already separated in three main folders -- Presentation, Business Logic and Data -- as a suggestion on how to organize the code for your feature.
- ✅ Bloc - Integrated bloc architecture for scalable, testable code which offers a clear separation between business logic and presentation
- ✅ Widget and Unit tests examples for all classes
- ✅ Shared unit test `setUp` and `tearDown` via the `flutter_test_config.dart` convention file.
- ✅ Json Serialization via code gen
- 🚧 with more to come soon...

## Output 📦

```sh
├── .gitignore
├── lib
│   ├── src
│   │   ├── di
│   │   └── features
│   │       └── feature_name
│   │           ├── presentation
│   │           │   ├── screens
│   │           │   │   └── widgets
│   │           │   └── bloc
│   │           ├── business_logic
│   │           │   ├── use_case
│   │           │   └── entities
│   │           └── data
│   │               ├── repositories
│   │               ├── data_source
│   │               └── dtos
│   └── package_name.dart
├── test
│   ├── flutter_test_config.dart
│   ├── helpers
│   │   └── pump_app.dart
│   └── src
│       └── features
│           └── feature_name
│               ├── presentation
│               │   ├── screens
│               │   │   └── widgets
│               │   └── bloc
│               ├── business_logic
│               │   ├── use_case
│               │   └── entities
│               └── data
│                   ├── repositories
│                   ├── data_source
│                   └── dtos
├── pubspec.lock
├── pubspec.yaml
└── README.md
```

[mugbug]: https://github.com/mugbug
