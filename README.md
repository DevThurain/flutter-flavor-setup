# Flutter Flavor Setup
This project illustrates the process of configuring a flavor for an large scale flutter application.
In this project, we will create three flavors: development (dev), quality assurance (qa), and production (prod).

## Libraries
- [flutter_flavorizr](https://pub.dev/packages/flutter_flavorizr)
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)

## Create Flavors
```
flutter pub run flutter_flavorizr
```

## VS Code Config
```
/// .vscode/launch.json
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