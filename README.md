# Meta SDK for Flutter

[![pub package](https://img.shields.io/pub/v/flutter_facebook_sdk.svg)](https://pub.dev/packages/flutter_facebook_sdk)
![GitHub code size](https://img.shields.io/github/languages/code-size/amajust/meta_sdk)
![GitHub contributors](https://img.shields.io/github/contributors/amajust/meta_sdk)
[![GitHub](https://i.stack.imgur.com/tskMh.png) GitHub](https://github.com/amajust/)

**Meta SDK** (formerly `flutter_facebook_sdk`) is a modernized Flutter plugin to integrate the latest Meta (Facebook) SDK into your applications. It supports fetching **Deep Links**, **Deferred Deep Links**, and logging **App Events** for both iOS and Android.

This version is maintained by [amajust](https://github.com/amajust) and has been updated to support Flutter 3.x, Dart 3 (Sound Null Safety), and the latest Android/iOS platform requirements as of 2026.

## Features

- ✅ Fetch Deep Links and Deferred Deep Links.
- ✅ Log standard and custom App Events.
- ✅ Support for iOS 14+ Advertiser Tracking.
- ✅ Modernized for Flutter 3.x and Dart 3.
- ✅ Latest Meta SDK (v17.x).

## Prerequisites

1. Create a Meta App at the [Meta for Developers](https://developers.facebook.com/) portal.
2. Obtain your **App ID** and **Display Name**.

## Platform Configuration

### Android

1. Add your App ID and Client Token to `/android/app/src/main/res/values/strings.xml`:

   ```xml
   <string name="facebook_app_id">[APP_ID]</string>
   <string name="fb_login_protocol_scheme">fb[APP_ID]</string>
   <string name="facebook_client_token">[CLIENT_TOKEN]</string>
   ```

2. Update `AndroidManifest.xml` with the meta-data tag inside the `<application>` element:

   ```xml
   <meta-data android:name="com.facebook.sdk.ApplicationId" android:value="@string/facebook_app_id"/>
   <meta-data android:name="com.facebook.sdk.ClientToken" android:value="@string/facebook_client_token"/>
   ```

3. Ensure you have the Internet permission:

   ```xml
   <uses-permission android:name="android.permission.INTERNET"/>
   ```

### iOS

Update your `Info.plist` with the following keys:

```xml
<key>CFBundleURLTypes</key>
<array>
  <dict>
  <key>CFBundleURLSchemes</key>
  <array>
    <string>fb[APP_ID]</string>
  </array>
  </dict>
</array>
<key>FacebookAppID</key>
<string>[APP_ID]</string>
<key>FacebookClientToken</key>
<string>[CLIENT_TOKEN]</string>
<key>FacebookDisplayName</key>
<string>[DISPLAY_NAME]</string>
<key>FacebookAutoLogAppEventsEnabled</key>
<true/>
<key>FacebookAdvertiserIDCollectionEnabled</key>
<true/>
```

## Usage

### Initialize SDK

```dart
final facebookSdk = FlutterFacebookSdk();
await facebookSdk.initializeSDK();
```

### Log App Events

```dart
await facebookSdk.logEvent(
  eventName: "button_clicked",
  parameters: {
    'button_id': 'main_cta',
  },
);
```

### Fetch Deep Links

```dart
facebookSdk.onDeepLinkReceived.listen((event) {
  print("Deep Link Received: $event");
});
```

## Credits

Originally created by [saadfarhan124](https://github.com/saadfarhan124). Modernized and maintained by [amajust](https://github.com/amajust).
