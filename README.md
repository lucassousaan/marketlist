# Market List

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)

Flutter app for managing shopping lists with local persistence. The project allows users to create lists, open the items of each list, mark items as purchased, track completion progress, and remove lists or items with automatic UI updates.

## Demo

TODO: Add app video or GIF below.

```md

```

## What the project does

- Creates shopping lists with custom names.
- Displays all lists saved locally on the device.
- Shows the progress of each list based on completed items and total items.
- Allows users to open a list and manage its items.
- Adds items to a specific list.
- Marks and unmarks items as purchased.
- Visually reorders items to prioritize unpurchased ones.
- Removes items individually using swipe gestures.
- Removes entire lists using swipe gestures.
- Deletes linked items when a list is removed.
- Displays loading, empty, and error states on the main screens.
- Uses native Flutter animations for list item entrance.
- Persists data locally with Hive, without relying on a backend.

## App flow

### Lists screen

On the home screen, the user sees all registered shopping lists. Each card shows:

- list name;
- number of completed items;
- total number of items;
- progress bar.

Users can also:

- create a new list through a bottom sheet;
- open the list details screen;
- delete a list with a left swipe.

### Items screen

When entering a list, the user accesses the items screen, where they can:

- add new items;
- mark an item as purchased;
- unmark a purchased item;
- remove items with swipe gestures;
- see the list update automatically.

## Stack

- Flutter
- Dart
- Provider for state management
- GetIt + Injectable for dependency injection
- GoRouter for navigation
- Hive CE for local persistence
- Freezed for immutable entities and state modeling
- Fpdart for functional result handling
- Google Fonts for typography

## Architecture

The project follows a structure inspired by Clean Architecture, separating responsibilities across layers.

### Main layers

- `presentation`: pages and providers responsible for UI and UI state.
- `domain`: entities, repository contracts, and use cases.
- `data`: models, local datasources, and repository implementations.
- `core`: global dependencies, routing, theme, failures, and shared abstractions.
- `shared`: reusable widgets shared across features.

### Current features

- `market_lists`: create, list, and remove shopping lists.
- `list_details`: create, list, toggle, and remove items.

## Data persistence

Data is stored locally with Hive.

- `MarketListModel` represents shopping lists.
- `MarketItemModel` represents list items.
- Adapters are registered when the app starts.
- No internet connection is required to use the app.

## Navigation

The app currently has two main routes:

- `/` for the lists screen.
- `/details` for the selected list items screen.

## Theme and visual experience

- light and dark theme support with `ThemeMode.system`;
- typography using `GoogleFonts.dmMonoTextTheme()`;
- entry animations in lists using the shared `StaggeredListItem` widget.

## Project structure

```text
lib/
	core/
		db/
		di/
		failures/
		router/
		theme/
		usecase/
		utils/
	features/
		list_details/
		market_lists/
	shared/
		widgets/
```

## Running the project

### Requirements

- Flutter installed
- Dart SDK compatible with the project
- Android Studio or VS Code with Flutter support
- Configured device/emulator

### Install dependencies

```bash
flutter pub get
```

### Run in debug mode

```bash
flutter run
```

## Code generation

This project uses code generation for `injectable`, `freezed`, and Hive adapters.

To regenerate files:

```bash
dart run build_runner build --delete-conflicting-outputs
```

If you want to keep it running in watch mode:

```bash
dart run build_runner watch --delete-conflicting-outputs
```

## Building the APK

### Standard release APK

```bash
flutter build apk --release
```

Generated file:

```text
build/app/outputs/flutter-apk/app-release.apk
```

### Split APK by architecture

```bash
flutter build apk --release --split-per-abi
```

## Tests

To run tests:

```bash
flutter test
```

## Important current behaviors

- when adding an item, the list total item count is updated;
- when marking or unmarking an item, the completed item count is updated;
- when deleting a list, its related items are also removed;
- data remains available after closing and reopening the app because it is stored locally.

## Possible next steps

Some natural next improvements for the project would be:

- editing list and item names;
- search and filters;
- manual sorting;
- widget and integration tests;
- cloud sync;
- list export and sharing.
