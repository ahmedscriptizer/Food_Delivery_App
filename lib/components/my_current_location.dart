import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class MyCurrentLocation extends StatefulWidget {
  const MyCurrentLocation({super.key});

  @override
  State<MyCurrentLocation> createState() => _MyCurrentLocationState();
}

class _MyCurrentLocationState extends State<MyCurrentLocation> {
  final TextEditingController textController = TextEditingController(); // Define textController

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your Location"),
        content: TextField(
          controller: textController, // Attach the controller
          decoration: const InputDecoration(hintText: "Enter Address..."),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              textController.clear();
              Navigator.pop(context); // Fix the unnecessary comma
            },
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              String newAddress = textController.text;
              if (newAddress.isNotEmpty) {
                context.read<Restaurant>().updateDeliveryAddress(newAddress);
              }
              Navigator.pop(context); // Close the dialog
              textController.clear();
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose(); // Clean up the controller when the widget is disposed
    super.dispose();
  }
}
