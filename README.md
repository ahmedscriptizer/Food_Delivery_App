# QuickBite 🍔🚀

QuickBite is a modern food delivery app built with **Flutter**. It provides users with an intuitive way to browse restaurants, add food items to the cart, and place orders using secure payment methods. The app features a **responsive design**, **theme switching**, and **Firebase Firestore integration** for storing orders. Whether you're craving a burger, salad, or dessert, QuickBite has you covered!

---

## Features ✨

- **Browse Food Categories**  
  Explore food items categorized as burgers, salads, desserts, drinks, and sides.

- **Add Food to Cart**  
  Add items to your cart, including optional add-ons for a personalized experience.

- **Cart Management**  
  View and manage the items in your cart. Clear the cart with a confirmation dialog.

- **Secure Payment**  
  Enter payment details with form validation for a safe and seamless checkout.

- **Order Receipt**  
  Display a detailed receipt after payment. All orders are stored in **Firebase Firestore** for future reference.

- **Delivery Progress Page**  
  Simulate the delivery process with real-time updates and driver contact options.

- **Theme Support**  
  Toggle between **light mode** and **dark mode** for a comfortable viewing experience.

---

## Project Structure 🗂️
**lib/**  
├── **components/**      # Reusable UI components (buttons, cart tiles, etc.)  
├── **models/**          # Data models like Food, Addons, and Restaurant.  
├── **pages/**           # Screens for various functionalities (e.g., Cart, Payment, Settings).  
├── **services/**        # Backend logic like Firestore integration.  
├── **themes/**          # Theme definitions for light and dark modes.  
├── **main.dart**        # The entry point of the application.  
---

## Tech Stack 💻

- **Frontend:** Flutter (Dart)
- **State Management:** Provider
- **Database:** Firebase Firestore
- **UI Library:** `flutter_credit_card` and `lottie`
- **Other Tools:** Firebase Authentication, Firebase Firestore

---
## Screenshots 📸

| Feature                  | Screenshot                                  |
|--------------------------|---------------------------------------------|
| Home Page                | ![Home](https://via.placeholder.com/300x600.png?text=Home+Page)       |
| Cart Page                | ![Cart](https://via.placeholder.com/300x600.png?text=Cart+Page)       |
| Payment Page             | ![Payment](https://via.placeholder.com/300x600.png?text=Payment+Page) |
| Delivery Progress Page   | ![Delivery](https://via.placeholder.com/300x600.png?text=Delivery+Page) |
## Future Enhancements 🔮

Here are some ideas for future improvements:

- **User Authentication:** Add login/signup functionality using Firebase Authentication.
- **Order History:** Allow users to view their past orders.
- **Search Functionality:** Enable users to search for specific food items or restaurants.
- **Push Notifications:** Notify users about order status updates using Firebase Cloud Messaging.
- **Ratings and Reviews:** Allow users to rate and review restaurants and food items.
---

🌟 **Thank you for checking out QuickBite!** If you find this project useful, don't forget to give it a ⭐️ on GitHub. Contributions and feedback are always welcome! Happy coding! 🚀
