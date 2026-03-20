# Changelog

## 0.0.1

- Initial version. Only iOS Support.

## 0.0.2

- Added support for android.

## 0.0.3

- Added initiate checkout facebook event

## 0.0.4

- Updated FBSDKCoreKit version from '8.0.0' to '9.1.0'
- Updated deployment platform from '8.0' to '9.0'
- Added a generic function to log facebook events

## 0.0.5

- Fixed plugin crash on app resume android.

## 1.0.0

- Migrate to null safety.

## 1.1.0

- Modernized for Meta SDK (Facebook SDK v17.x).
- Support for Flutter 3.x and Dart 3 (Sound Null Safety).
- Updated Android and iOS platform requirements.

## 1.2.0

- Fixed iOS deprecated `AppEvents` static calls → `AppEvents.shared` instance API (FB SDK 17+).
- Fixed iOS `Settings.setAdvertiserTrackingEnabled` → `Settings.shared.isAdvertiserTrackingEnabled`.
- Fixed iOS `ApplicationDelegate.initializeSDK(nil)` → `ApplicationDelegate.shared.initializeSDK()`.
- Fixed Android: added `initializeSDK` method handler.
- Fixed Android: `activateApp` now returns `result.success(true)`.
- Fixed Dart: renamed `logPurhcase` → `logPurchase` (typo fix, deprecated alias kept for compatibility).
- Fixed `pubspec.yaml`: corrected iOS pluginClass to `SwiftMetaSdkPlugin`.
- Bumped `compileSdkVersion` to 35, Kotlin to 2.1.0, AGP to 8.9.1.
