# Flutter Flavor Setup
This project illustrates the process of configuring a flavor for an large scale flutter application.
In this project, we will create three flavors: development (dev), quality assurance (qa), and production (prod).

## Libraries
- [flutter_flavorizr](https://pub.dev/packages/flutter_flavorizr)
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)

## Create Flavors
```
# flavorizr.yaml
flavors:
  qa:
    app:
      name: "Flavor(QA)"

    android:
      applicationId: "com.thurain.flavor.qa"
      # firebase:
      #   config: ".firebase/qa/google-services.json"
    ios:
      bundleId: "com.thurain.flavor.qa"
      # firebase:
      #   config: ".firebase/qa/firebase_app_id_file.json"



  dev:
    app:
      name: "Flavor(DEV)"
  
    android:
      applicationId: "com.thurain.flavor.dev"
      # firebase:
      #   config: ".firebase/dev/google-services.json"
    ios:
      bundleId: "com.thurain.flavor.dev"
      # firebase:
      #   config: ".firebase/dev/firebase_app_id_file.json"


  prod:
    app:
      name: "Flavor"
  
    android:
      applicationId: "com.thurain.flavor"
      # firebase:
      #   config: ".firebase/prod/google-services.json"
    ios:
      bundleId: "com.thurain.flavor"
      # firebase:
      #   config: ".firebase/prod/firebase_app_id_file.json"

```
```
flutter pub run flutter_flavorizr
```

## VS Code Config
Android Studio automatically generates a build profile, whereas VS Code requires a configuration file for each build profile to run.

```
# .vscode/launch.json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Flavor(QA)",
            "request": "launch",
            "type": "dart",
            "args": [
                "-t",
                "lib/main_qa.dart",
                "--flavor",
                "qa"
            ]
        },
        {
            "name": "Flavor(DEV)",
            "request": "launch",
            "type": "dart",
            "args": [
                "-t",
                "lib/main_dev.dart",
                "--flavor",
                "dev"
            ]
        },
        {
            "name": "Flavor",
            "request": "launch",
            "type": "dart",
            "args": [
                "-t",
                "lib/main_prod.dart",
                "--flavor",
                "prod"
            ]
        }
    ]
}
```

## Create Icon Files
Create flutter_launcher_icons.yaml for each flavor.
- flutter_launcher_icons-dev.yaml
- flutter_launcher_icons-qa.yaml
- flutter_launcher_icons-prod.yaml

```
# flutter_launcher_icons-dev.yaml
flutter_launcher_icons:
  image_path: "assets/pngs/ic_logo_dev.png"


  android: "launcher_icon"
  min_sdk_android: 21 # android min sdk min:16, default 21
  adaptive_icon_background: "#ffffff"
  adaptive_icon_foreground: "assets/pngs/ic_logo_fg_dev.png"

  ios: true
  remove_alpha_channel_ios: true
```
```
flutter pub run flutter_launcher_icons
```
## FlutterFire & Node.js 
Before firebase setup to your flutter project, you need to install both Node.js and FlutterFire
- [Node.js Install](https://nodejs.org/en)
- [FlutterFire Install](https://firebase.google.com/docs/flutter/setup?platform=ios)

## Firebase Connect
Create fiebase project for each flavor and connect with flutterfire cli.
- flavor-qa
- flavor-dev
- flavor

```
# config per flavour with project name & package name
flutterfire config \
  --project=flavor-qa-1a5f2\
  --out=lib/firebase_options_qa.dart \
  --ios-bundle-id=com.thurain.flavor.qa \
  --android-app-id=com.thurain.flavor.qa

  flutterfire config \
  --project=flavor-dev-d8ce8\
  --out=lib/firebase_options_dev.dart \
  --ios-bundle-id=com.thurain.flavor.dev \
  --android-app-id=com.thurain.flavor.dev

    flutterfire config \
  --project=flavor-fd501\
  --out=lib/firebase_options.dart \
  --ios-bundle-id=com.thurain.flavor \
  --android-app-id=com.thurain.flavor
```
