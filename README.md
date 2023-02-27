# Bewr Home
## Project Description
Bewr Home is an open-source and multi-platform smart home application that stands out by proactively suggesting ways to improve your smart home and make your connected objects smarter.

Our technology allows us to offer a unique experience in terms of controlling and optimizing your smart home. For example, our application can suggest programming your coffee maker to be ready when you wake up or turning off the lights automatically when you leave your home.

By choosing Bewr Home, you benefit from a high-quality open-source and multi-platform smart home application that will help you simplify your daily life and enjoy a smarter and more connected home.

## Screenshots
![Mobile screenshot](/assets/images/screenshots/mobile.png)
![Tablet screenshot](/assets/images/screenshots/tablet.png)
![Desktop screenshot](/assets/images/screenshots/desktop.png)

## Roadmap
### Planned Features
* Shared preferences
* [Accessibility v2](https://docs.flutter.dev/development/accessibility-and-localization/accessibility) (tooltips on all buttons, [semantics](https://medium.com/flutter-community/a-deep-dive-into-flutters-accessibility-widgets-eb0ef9455bc) (labels, merge and exclude)
* Adaptive: changing functionality based on platform's capabilities (e.g. using native adaptive method and "[adaptive_dialog](https://pub.dev/packages/adaptive_dialog)" package)
* Visual flow-based programming for the automations
* [BLoC architecture](https://youtu.be/Ep6R7U9wa0U)
* Welcome screen with [authentication](https://bloclibrary.dev/#/flutterfirebaselogintutorial)
* Onboarding
* Analytics and error reporting (+ error screens)
* Implementing notification
* Building all screens
* Third-party integrations
* Community powered products user manual, scan receipts
* To-Do list per room
* Energy supplier management

### Implemented Features
* [Accessibility v1](https://docs.flutter.dev/development/accessibility-and-localization/accessibility)
* Theme integration
* Responsive design for mobile, tablet and desktop
* Localization (English and French)
* App theme integration (light and dark)
* Route management with GoRouter
* Feature-First file structure

### Last Updates
* [Accessibility](https://docs.flutter.dev/development/accessibility-and-localization/accessibility) (active interactions, screen reader testing, color vision deficiency testing, scale factors, tooltips on IconButton and FloatingActionButton)

### Known Issues
* Side bar theme is not changing when switching theme.
* Side bar item is not part of screen reader's focus.
* Side bar item is not highlighted when selected from other screen breakpoints.

See the [open issues](https://github.com/BewrApp/Bewr-Home/issues) for a list of proposed features (and known issues).

## Multi-platform
Currently under development for Android, iOS, iPadOS, Windows and web. A MacOS version will be adapted.
