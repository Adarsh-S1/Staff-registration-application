# Staff Registration Application 📱

A robust Flutter application designed for managing staff records. This app allows users to register new staff members, view a list of employees, update profile details, and manage authentication, all powered by a **Firebase** backend.

The app features a modern UI with **Neumorphic** design elements, smooth animations, and a dark/light theme toggle.

## 🌟 Features

### Authentication

  * **Login & Sign Up:** Secure email/password authentication using Firebase Auth.
  * **Splash Screen:** Animated intro using Lottie files.
  * **Auto-Login:** Persists user session state.

### Staff Management (CRUD)

  * **Registration:** Detailed form to add staff members (Name, Address, Education, Experience, etc.).
  * **Read:** View a real-time list of all registered staff.
  * **Update:** Edit specific fields of a staff member's profile.
  * **Delete:** Remove staff records from the database.

### UI/UX

  * **Modern Design:** Uses `flutter_neumorphic_plus` for a soft, tactile feel.
  * **Theming:** Toggle between Dark and Light modes (persisted using Shared Preferences).
  * **Navigation:** Implements an `AdvancedDrawer` for a stylish side menu.
  * **Animations:** Integrated `flutter_animate` and `lottie` for a polished user experience.
  * **Carousel:** Displays the latest registered staff on the home screen.

## 🛠️ Tech Stack

  * **Framework:** [Flutter](https://flutter.dev/)
  * **Language:** [Dart](https://dart.dev/)
  * **Backend:**
      * [Firebase Auth](https://firebase.google.com/docs/auth) (Authentication)
      * [Cloud Firestore](https://firebase.google.com/docs/firestore) (Database)
  * **State Management:** [Provider](https://pub.dev/packages/provider)

## 📦 Key Dependencies

Based on the imports found in the code, the project uses the following packages:

  * `firebase_core`, `firebase_auth`, `cloud_firestore`
  * `provider`
  * `shared_preferences`
  * `flutter_advanced_drawer`
  * `flutter_neumorphic_plus`
  * `lottie`
  * `carousel_slider`
  * `awesome_dialog`
  * `flutter_animate`
  * `slide_to_act`
  * `fluttertoast`

## 📂 Project Structure

```
lib/
├── fonts/                # Custom fonts (Platypi)
├── image/                # Lottie JSON animations
├── theme/
│   ├── my_theme.dart     # Theme styling logic
│   ├── save_theme.dart   # Shared Preferences logic
│   └── theme_provider.dart # State management for theme
├── custom_morphisum.dart # Reusable Neumorphic container widget
├── fire_store.dart       # Firebase CRUD service methods
├── firebase_options.dart # Firebase configuration
├── form_model.dart       # Data model for staff
├── home.dart             # Main Dashboard/Home Screen
├── login_Function.dart   # Auth State Wrapper
├── login_signup.dart     # Login and Registration Logic
├── main.dart             # Application Entry Point
├── profile_box.dart      # Widget for displaying profile fields
├── profile_list.dart     # List of profiles (Current User)
├── profile_page.dart     # Detail view for editing/deleting
├── registration_form.dart# Form to add new staff
├── splash_screen.dart    # Initial loading screen
└── staff_list.dart       # List view of all staff data
```

## 🚀 Getting Started

### Prerequisites

  * Flutter SDK installed.
  * A Firebase project created in the [Firebase Console](https://console.firebase.google.com/).

### Installation

1.  **Clone the repository:**

    ```bash
    git clone <your-repo-url>
    cd staff_registration_app
    ```

2.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

3.  **Firebase Configuration:**

      * This project includes `firebase_options.dart`, which suggests it was configured using the FlutterFire CLI.
      * Ensure you have valid `google-services.json` (for Android) inside `android/app/` and `GoogleService-Info.plist` (for iOS) inside `ios/Runner/`.
      * *Note: If you are setting this up from scratch, run `flutterfire configure`.*

4.  **Run the App:**

    ```bash
    flutter run
    ```

## 📸 Screens Overview

1.  **Splash Screen:** Loads animation and navigates to auth check.
2.  **Login/Signup:** Toggle between modes. Validates inputs.
3.  **Home Screen:** Access the drawer, view the latest staff carousel, and quick actions.
4.  **Registration Form:** Input fields with date pickers and dropdowns.
5.  **Staff List:** Scrollable list of staff; tap to view details in a bottom sheet.
6.  **Profile:** View specific details, click edit icons to update Firestore data, or delete the record.
