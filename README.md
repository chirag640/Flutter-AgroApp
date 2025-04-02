# Agro App

Agro App is a Flutter-based mobile application designed to manage agricultural business operations, including inventory, billing, sales reports, and more. The app provides a clean and intuitive user interface with features tailored for small to medium-sized agricultural businesses.

## Features

- **Home Dashboard**: View key metrics like today's sales, inventory value, and pending orders.
- **Inventory Management**: Track stock levels, filter items, and manage inventory.
- **Billing System**: Create and manage bills for customers with detailed transaction history.
- **Sales Reports**: Analyze daily, weekly, and monthly sales trends and revenue distribution.
- **More Options**: Access additional features like profile management, settings, and team management.

## Screens

1. **Home Screen**: Displays an overview of sales, inventory, and recent activities.
2. **Inventory Screen**: Manage stock items with details like SKU, quantity, and price.
3. **Billing Screen**: Create new bills and view recent transactions.
4. **Reports Screen**: View sales reports and trends.
5. **More Screen**: Access additional options like profile, settings, and logout.

## Firebase Integration

The app uses Firebase for backend services. Ensure Firebase is properly configured before running the app.

### Firebase Setup

1. Add the `google-services.json` file (for Android) and `GoogleService-Info.plist` file (for iOS) to the respective directories.
2. Install the `firebase_core` package by adding it to `pubspec.yaml`:
   ```yaml
   dependencies:
     firebase_core: ^latest_version
   ```
3. Run `flutter pub get` to fetch the dependencies.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/chirag640/Flutter-AgroApp.git
   ```
2. Navigate to the project directory:
   ```bash
   cd agro_app/app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── main.dart                # Entry point of the app
├── screens/                 # Contains all the screen widgets
│   ├── home.dart            # Home screen
│   ├── inventory.dart       # Inventory management screen
│   ├── billing.dart         # Billing screen
│   ├── reports.dart         # Sales reports screen
│   ├── more.dart            # Additional options screen
├── widgets/                 # Custom reusable widgets
```

## Dependencies

- **Flutter**: Latest stable version
- **Firebase Core**: For Firebase integration
- **Material Design**: For UI components

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your message here"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

For any inquiries or support, please contact [Chaudharychirag640.com].