# WhatsApp Clone

## About

A frontend-only `WhatsApp clone` developed using the `Flutter` framework, leveraging the power of `Dart` for building a responsive and visually appealing user interface (UI). This application replicates the home screen of WhatsApp including chat box, status & community pages.

## Objective

The objective of this project is to learn and explore various widgets in Flutter, enhancing our understanding of UI development and building responsive applications.

## Demo

You can try out the demo of this WhatsApp clone by visiting the following link:

[**Live Demo as Webpage**](https://whatsapp-clone-2769e.web.app/) *

Alternatively, you can download the APK file to install the application on your Android device:
> This will require **granting permission** to *install apps from unknown sources*

[**Download Release APK**](https://github.com/Swarnotaj003/WhatsApp-Clone/releases/download/v1.0/app-release.apk) *

[**Download Debug APK**](https://github.com/Swarnotaj003/WhatsApp-Clone/releases/download/v1.0/app-debug.apk)
> **Note** *: The **profile drawer** could not be loaded in these views due to some *technical issues*.

## Getting Started

To run this project locally, follow these steps:

### Prerequisites

- Flutter SDK installed on your device
- An IDE like Android Studio or VS Code
- An Android emulator or a physical device for testing

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/whatsapp_clone.git
    cd whatsapp_clone
2. Install the dependencies:
    ```bash
    flutter pub get
3. Set up Firebase:
    - Create a Firebase project in the Firebase Console.
    - Add your Android app to the Firebase project and download the google-services.json file.
    - Place the google-services.json file in the android/app directory.
4. Configure your app:
    - Update the necessary configurations in android/app/build.gradle and android/build.gradle as per Firebase setup instructions.

5. Run the app:
    ```bash
    flutter run
