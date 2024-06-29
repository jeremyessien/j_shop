# j_shop
 An E-commerce app 

 **Architecture**

This project uses the **MVVM (Model-View-ViewModel)** architecture with **Provider** for state management, ensuring a clear separation of concerns and a responsive user experience.

 **Components**

1. **Model**:
   - Represents the application's data and business logic.
   - Example: `Product` class.

2. **View**:
   - UI components displaying data and handling user interactions.
   - Examples: `ShopScreen`, `ProductTile`, `ProductDetailsScreen`.

3. **ViewModel**:
   - Acts as a bridge between Model and View, managing data preparation and state changes.
   - Example: `FetchProductVM` class.

**State Management with Provider**

- Uses `ChangeNotifier` from the `provider` package to manage and notify state changes, ensuring the UI reacts to state updates.


### Download APK

You can download the APK from the following link:

[Download APK](https://drive.google.com/file/d/1XTTOkugKDzC6hCg4HrEeBBQNNDIK954s/view?usp=drivesdk)
