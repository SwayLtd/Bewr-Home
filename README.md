# Application file structure

The "Feature-First" approach involves organizing the code of the application around the features of the application, rather than organizing it around the layer of the application (for example, models, views, controllers, etc.). This can make the code easier to understand and maintain, as each feature is grouped in one place.

## Main folders

- `lib/`: contains the source code of the application.
  - `main.dart`: Flutter application entry point. Configures the application routes, visual theme, and translation.
  - `features/`: contains a folder for each feature of the application. Each feature has its own folder containing all the files associated with that feature.
  - `core/`: contains files that are shared between multiple features of the application. This can include data models, services, and common utilities.

## Other folders

- `assets/`: contains resources used by the application, such as fonts, images, and translation files.
- `test/`: contains tests for the application. This can include widget tests, integration tests, and unit tests.

## Configuration files

- `.gitignore`: tells Git which files and folders to ignore when tracking the source code of the application.
- `pubspec.yaml`: contains information about the application dependencies and other important details about the application.