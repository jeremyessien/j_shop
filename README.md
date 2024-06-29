# j_shop
 An E-commerce app 

 **Architecture**

This project uses the **MVVM (Model-View-ViewModel)** architecture with **Provider** for state management, ensuring a clear separation of concerns and a responsive user experience.

 **Components**

1. **Model**:
   - Represents the application's data and business logic.
   - Example: `Product & Shop` class.

2. **View**:
   - UI components displaying data and handling user interactions.
   - Examples: `ShopScreen`, `ProductTile`, `ProductDetailsScreen`, 'CartSceen'.

3. **ViewModel**:
   - Acts as a bridge between Model and View, managing data preparation and state changes.
   - Example: `FetchProductVM` class.

**State Management with Provider**

- Uses `ChangeNotifier` from the `provider` package to manage and notify state changes, ensuring the UI reacts to state updates.

## How to Run the App

To run the app locally, follow these steps:

1. **Clone the Repository:**

   ```sh
   git clone https://github.com/jeremyessien/j_shop.git
   cd your-repo
   
2. **Get packages**
   - Use the command 'flutter pub get' in your terminal.

3. **Run the project**
   - Use the command 'flutter run' in your terminal.
   
### Download APK

You can download the APK from the following link:

[Download APK](https://drive.google.com/file/d/1XTTOkugKDzC6hCg4HrEeBBQNNDIK954s/view?usp=drivesdk)
