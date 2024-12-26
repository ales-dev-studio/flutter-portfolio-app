


# Flutter clean architecture structure with BLOC and Get_It Packages

This repository contains a clean architecture structure using Flutter, following the Clean Architecture principles and utilizing BLOC pattern along with BLOC and Get_It packages.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/aliesmailie/personal_portfolio.git
   ```

2. Change to the project directory:

   ```bash
   cd flutter_boilerplate
   ```

3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## Structure

The app follows the Clean Architecture principles, with the following structure:

- `lib/`
    - `core/`: Contains Core Utilities that used entire application
    - `features/`:
        - `app`: Initializes the app and sets up the dependency injection.
        - `{features_a}`:
            - `data/`: Contains the data layer responsible for handling data fetching and caching.
            - `domain/`: Defines the core business logic and entities of the app.
            - `presentation/`: Contains the UI layer of the app, including BLOCs, views, and widgets.
    - `main.dart`: Entry point of the application.

## Dependencies

The app utilizes several Flutter packages:

- [bloc](https://pub.dev/packages/bloc): Abstracts business logic from presentation and handles state management.
- [flutter_bloc](https://pub.dev/packages/flutter_bloc): Implements the BLOC pattern for state management.
- [get_it](https://pub.dev/packages/get_it): Provides dependency injection capabilities.
- [dio](https://pub.dev/packages/dio): Handles HTTP requests to fetch news articles.
- [cached_network_image](https://pub.dev/packages/cached_network_image): Caches images fetched from the network.
- [equatable](https://pub.dev/packages/equatable): Simplifies equality comparisons for state management.
- [get_it](https://pub.dev/packages/get_it): Provides dependency injection capabilities.
- [mockito](https://pub.dev/packages/mockito): Used for mocking dependencies in unit tests.
- [flutter_test](https://pub.dev/packages/flutter_test): Used for writing unit and widget tests.
- [shared_preferences](https://pub.dev/packages/shared_preferences): Handles caching fetched data from the network.
- [slang](https://pub.dev/packages/slang): Handles localization and multilingual support.
- [intl](https://pub.dev/packages/intl): Provides internationalization and localization facilities, including message translation, plurals/genders in messages, and date/number formatting based on the current Locale.

## Some useful descriptions

BrickHub is a platform where developers can discover, install, and publish reusable templates called bricks.

See for more information:
[online documentation](https://docs.brickhub.dev/) 

To auto create clean architecture directories use mason:
> mason make clean_architecture_folders --name home -o ~/AndroidStudioProjects/personal_portfolio/lib/features

[online documentation](https://brickhub.dev/bricks/feature_brick/0.6.2)
A brick to create a feature and tests using best practices and your state management of choice:
> mason make feature_brick

===============================

The multilingual structure of the app is implemented by slang package.

See for more information:
[online documentation](https://pub.dev/packages/slang) 

To use command-line tool run this command:
> dart run slang

===============================

flutter_launcher_icons package is a command-line tool which simplifies updating launcher icons.

See for more information:
[online documentation](https://pub.dev/packages/flutter_launcher_icons) 

To use command-line tool run these commands:
> flutter pub get
> flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml

===============================

Formz package is a unified form representation in Dart. 
Formz aims to simplify form representation and validation in a generic way.

See for more information:
[online documentation](https://pub.dev/packages/formz)
[online documentation](https://brickhub.dev/bricks/formz_input/0.2.0) 

To use command-line tool run this command:
> mason make formz_input -o  ~/AndroidStudioProjects/personal_portfolio/lib/features --input_name PhoneNumber --input_type String --initial_value "''" --validate_empty_string true

===============================

Sized_context package allow to easily access the MediaQuery sizing info directly on the context
hint: package codes with some changes have been used in the project instead of package

See for more information:
[online documentation](https://pub.dev/packages/sized_context)

===============================

Mockito package is used to generate mock classes for testing

See for more information:
[online documentation](https://pub.dev/packages/mockito)

===============================
