![WhatsApp Image 2025-01-25 at 00 05 49_3df48b97](https://github.com/user-attachments/assets/6f22c701-f3cd-4f72-84c9-2953d84ec772)# QuickBite 🍔🚀

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

- **lib/**  
  ├── **components/**      \# Reusable UI components (buttons, cart tiles, etc.)  
  ├── **models/**          \# Data models like Food, Addons, and Restaurant.  
  ├── **pages/**           \# Screens for various functionalities (e.g., Cart, Payment, Settings).  
  ├── **services/**        \# Backend logic like Firestore integration.  
  ├── **themes/**          \# Theme definitions for light and dark modes.  
  ├── **main.dart**        \# The entry point of the application.

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
| Home Page                | <img src="https://github.com/user-attachments/assets/17cb2904-c256-4306-a0a7-b56702504458" width="200" /> |
| Cart Page                | <img src="https://github.com/user-attachments/assets/afb33b98-b430-44b8-aefc-d43cd8cd7ce0" width="200" /> |
| Payment Page             | <img src="https://github.com/user-attachments/assets/f215ceb2-88c7-4428-879f-ee0cc1a616f7" width="200" /> |
| Receipt Page             | <img src="https://github.com/user-attachments/assets/1acd1400-e0df-4116-9752-7181341c34c0" width="200" /> ||
---
## Future Enhancements 🔮

Here are some ideas for future improvements:

- **User Authentication:** Add login/signup functionality using Firebase Authentication.
- **Order History:** Allow users to view their past orders.
- **Search Functionality:** Enable users to search for specific food items or restaurants.
- **Push Notifications:** Notify users about order status updates using Firebase Cloud Messaging.
- **Ratings and Reviews:** Allow users to rate and review restaurants and food items.
---

🌟 **Thank you for checking out QuickBite!** If you find this project useful, don't forget to give it a ⭐️ on GitHub. Contributions and feedback are always welcome! Happy coding! 🚀
