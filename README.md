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

### Benefits

- **Separation of Concerns**: Business logic and UI logic are clearly separated.
- **Reactive UI**: UI components respond to state changes managed by ViewModels.
- **Maintainability and Scalability**: Organized code structure facilitates easier maintenance and project growth.
