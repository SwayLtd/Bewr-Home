# Application file structure

The "Feature-First" approach involves organizing the code of the application around the features of the application, rather than organizing it around the layer of the application (for example, models, views, controllers, etc.). This can make the code easier to understand and maintain, as each feature is grouped in one place.

## Main folders

- `lib/`: contains the source code of the application.
  - `main.dart`: Flutter application entry point. Configures the application routes, visual theme, and translation.
  - `features/`: contains a folder for each feature of the application. Each feature has its own folder containing all the files associated with that feature. These may include:
    - `constants/` : constants used by the feature, such as configuration values or translation strings.
    - `models/` : data models used by the feature. These models define the data structures used by the feature to represent application data.
    - `screens/` : widgets displayed on the screen when the user uses the feature.
    - `services/` : classes providing services to the feature, such as access to a database or API.
    - `utils/` : utilities used by the feature, such as data validation or formatting functions.
    - `widgets/` : reusable widgets used by the feature.
    - `feature.dart` : entry file for the feature, which brings together all the elements of the feature and exposes them to the application.
  - `core/`: contains files that are shared between multiple features of the application. These may include:
    - `constants/` : constants used by the application, such as configuration values or translation strings.
    - `models/` : data models used by the application. These models define the data structures used by the application to represent application data.
    - `services/` : classes providing services to the application, such as access to a database or API.
    - `utils/` : utilities used by the application, such as data validation or formatting functions.
    - `widgets/` : reusable widgets used by the application.
    - `routes.dart` : configuration for the application routes.
    - `app_theme.dart` : configuration for the visual theme of the application, such as colors, fonts, and margins.
    - `i18n.dart` : configuration for the translation of the application, such as translation files and translation helper functions.

## Other folders

- `assets/`: contains resources used by the application, such as fonts, images, and translation files.
- `test/`: contains tests for the application. This can include widget tests, integration tests, and unit tests.