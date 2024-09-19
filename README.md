
# Flutter Login Simple

This is a simple Flutter project demonstrating a basic login functionality, with navigation and state management using a custom authentication provider. The app allows navigation between different screens after login.

## Features

- **Login Functionality**: Basic login with username and password.
- **State Management**: Uses a custom `AuthProvider` for authentication state.
- **Navigation**: Navigate between multiple screens (Ant, Bee, Cat) based on user interaction.
- **Logout**: Logout functionality included.

## Project Structure

```bash
lib/
├── ant_screen.dart         # Screen showing Ant details
├── bee_screen.dart         # Screen showing Bee details
├── cat_screen.dart         # Screen showing Cat details
├── home_screen.dart        # Home screen shown after successful login
├── login_screen.dart       # Login screen for user authentication
├── main.dart               # Entry point of the application
├── utils/
│   └── auth_provider.dart  # Authentication provider for managing login state
└── widgets/
    └── logout_box.dart     # Widget for displaying a logout box
```

## How to Run

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/flutter_login_simple.git
    ```
2. Navigate into the project directory:
    ```bash
    cd flutter_login_simple
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app:
    ```bash
    flutter run
    ```

## Screens

- **Login Screen**: The initial screen where the user enters credentials.
- **Home Screen**: Displayed after successful login. Contains navigation options.
- **Ant Screen**: Shows details about Ants.
- **Bee Screen**: Shows details about Bees.
- **Cat Screen**: Shows details about Cats.

## Authentication

The project uses a custom `AuthProvider` located in `utils/auth_provider.dart` to handle user authentication and login state. The app simulates a basic login check.

## Widgets

- **Logout Box**: A reusable widget located in `widgets/logout_box.dart` for displaying a logout prompt on various screens.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
