import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

import 'cart_item.dart';
import 'food.dart';
import 'package:flutter/material.dart';
class Restaurant extends ChangeNotifier {
  List <CartItem> get cart => _cart;
  final List<Food> _menu = [
    Food(
      name: "Classic CheeseBurger",
      description:
          "A chicken patty, sesame seeds bun, americano cheese, Veggies",
      imagePath: "lib/images/burgers/Single_Patty_Cheese_Burger.jpg",
      price: 350,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Extra Patty", price: 150),
        Addon(name: "Cheesy Dip Sauce", price: 80),
      ],
    ),
    Food(
      name: "Double Patty CheeseBurger",
      description:
          "Two chicken patties, sesame seeds bun, two americano cheese, veggies",
      imagePath: "lib/images/burgers/Double_Patty_Cheese_Burger.jpg",
      price: 400,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Extra Patty", price: 150),
        Addon(name: "Cheesy Dip Sauce", price: 80),
      ],
    ),
    Food(
      name: "Special QuickBite Burger",
      description: "Double beef patty with crinkle fries and special red sauce",
      imagePath: "lib/images/burgers/Special_QuickBite_Burger.jpg",
      price: 450,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Extra Patty", price: 150),
        Addon(name: "Cheesy Dip Sauce", price: 80),
      ],
    ),
    Food(
      name: "Fish Burger",
      description:
          "A crispy fish fillet, lettuce, and tartar sauce on a sesame seed bun",
      imagePath: "lib/images/burgers/Fish_Burger.jpg",
      price: 350,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Extra Patty", price: 150),
        Addon(name: "Cheesy Dip Sauce", price: 80),
      ],
    ),
    Food(
      name: "Wagyu Beef Burger",
      description:
          "Premium Wagyu beef patty, lettuce, tomatoes, and special sauce",
      imagePath: "lib/images/burgers/Wagyu_Beef_Burger.jpg",
      price: 600,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Extra Patty", price: 150),
        Addon(name: "Cheesy Dip Sauce", price: 80),
      ],
    ),

    // Desserts
    Food(
      name: "Apple Pie",
      description: "A warm, buttery pie filled with cinnamon apples",
      imagePath: "lib/images/desserts/Apple_Pie.jpg",
      price: 150,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 50),
        Addon(name: "Caramel Sauce", price: 30),
      ],
    ),
    Food(
      name: "Brownie",
      description: "A rich and fudgy chocolate brownie",
      imagePath: "lib/images/desserts/Brownie.jpg",
      price: 180,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 50),
        Addon(name: "Chocolate Syrup", price: 30),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake with a graham cracker crust",
      imagePath: "lib/images/desserts/Cheesecake.jpg",
      price: 220,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 30),
        Addon(name: "Chocolate Drizzle", price: 30),
      ],
    ),
    Food(
      name: "Chocolate Lava Cake",
      description: "Warm chocolate cake with a gooey molten center",
      imagePath: "lib/images/desserts/Chocolate_Lava_Cake.jpg",
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 50),
        Addon(name: "Whipped Cream", price: 20),
      ],
    ),
    Food(
      name: "Fruit Parfait",
      description: "Layers of fresh fruit, yogurt, and granola",
      imagePath: "lib/images/desserts/Fruit_Parfait.jpg",
      price: 180,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Honey", price: 20),
        Addon(name: "Granola", price: 30),
      ],
    ),
    // Drinks
    Food(
      name: "Iced Latte",
      description: "A chilled espresso with milk and ice",
      imagePath: "lib/images/drinks/Iced_Latte.jpg",
      price: 200,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot", price: 50),
        Addon(name: "Caramel Syrup", price: 30),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Refreshing iced tea with lemon",
      imagePath: "lib/images/drinks/Iced_Tea.jpg",
      price: 150,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon", price: 10),
        Addon(name: "Mint", price: 10),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "Sweet and tangy lemonade served cold",
      imagePath: "lib/images/drinks/Lemonade.jpg",
      price: 180,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint", price: 10),
        Addon(name: "Lemon", price: 10),
      ],
    ),
    Food(
      name: "Milkshake",
      description: "A creamy milkshake with your choice of flavor",
      imagePath: "lib/images/drinks/Milkshake.jpg",
      price: 220,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 30),
        Addon(name: "Chocolate Syrup", price: 20),
      ],
    ),
    Food(
      name: "Smoothie",
      description: "A refreshing smoothie with fresh fruit",
      imagePath: "lib/images/drinks/Smoothie.jpg",
      price: 180,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chia Seeds", price: 20),
        Addon(name: "Honey", price: 30),
      ],
    ),
    // Salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce with Caesar dressing, croutons, and parmesan",
      imagePath: "lib/images/salads/Caesar_Salad.jpg",
      price: 180,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 100),
        Addon(name: "Extra Dressing", price: 20),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description: "Tomatoes, mozzarella, and basil with balsamic drizzle",
      imagePath: "lib/images/salads/Caprese_Salad.jpg",
      price: 200,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Balsamic Vinegar", price: 20),
        Addon(name: "Grilled Chicken", price: 100),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description: "Lettuce, avocado, bacon, chicken, and blue cheese",
      imagePath: "lib/images/salads/Cobb_Salad.jpg",
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 50),
        Addon(name: "Grilled Chicken", price: 100),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Tomatoes, cucumbers, olives, and feta cheese",
      imagePath: "lib/images/salads/Greek_Salad.jpg",
      price: 220,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Feta", price: 30),
        Addon(name: "Grilled Chicken", price: 100),
      ],
    ),
    Food(
      name: "Spinach Strawberry Salad",
      description:
          "Fresh spinach, strawberries, and walnuts with balsamic vinaigrette",
      imagePath: "lib/images/salads/Spinach_Strawberry_Salad.jpg",
      price: 200,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 100),
        Addon(name: "Extra Dressing", price: 20),
      ],
    ),
    // Sides
    Food(
      name: "Bread Sticks",
      description: "Soft and warm bread sticks with garlic butter",
      imagePath: "lib/images/sides/Bread_Sticks.jpg",
      price: 80,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Coleslaw",
      description: "Crispy coleslaw with a tangy dressing",
      imagePath: "lib/images/sides/Coleslaw.jpg",
      price: 70,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Garlic Bread",
      description: "Toasty garlic bread with butter",
      imagePath: "lib/images/sides/Garlic_Bread.jpg",
      price: 90,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Mac N Cheese",
      description: "Creamy macaroni and cheese",
      imagePath: "lib/images/sides/Mac_N_Cheese.jpg",
      price: 120,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Potato Wedges",
      description: "Crispy potato wedges with a dipping sauce",
      imagePath: "lib/images/sides/Potato_Wedges.jpg",
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
  ];

  List<Food> get menu => _menu;
  final List<CartItem> _cart = [];

  String _deliveryAddress = "E-9 ISB";

  String get deliveryAddress => _deliveryAddress;



  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }

    notifyListeners();
  }
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln("----------");

    for(final cartItem in _cart){
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if(cartItem.selectedAddons.isNotEmpty){
        receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();

  }

  String _formatPrice(double price){
    return "${price.toStringAsFixed(2)}Rs";
  }

  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name}) (${_formatPrice(addon.price)}").join(", ");
  }
}
