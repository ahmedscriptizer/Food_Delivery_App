import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quickbite/components/my_drawer_tile.dart';
import 'package:quickbite/pages/settings_page.dart';
import 'package:quickbite/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(){
    final authService = AuthService();
    authService.signOut();

  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top:100.0),
          child: Lottie.network(
            'https://lottie.host/9f5a6501-8c74-48ab-8f74-485a34d626d2/fH3uoIu0R3.json',
            height: 300,
            width: 300,
            repeat: true,
          ),
        ),
        Padding(
        padding: const EdgeInsets.all(25.0),
        child: Divider(
          color: Theme.of(context).colorScheme.secondary,
        ),
        ),

        MyDrawerTile(
          text: "H O M E",
          icon: Icons.home,
          onTap: () => Navigator.pop(context),
        ),
        MyDrawerTile(
          text: "S E T T I N G S",
          icon: Icons.settings,
          onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsPage(),
            ),
            );
          },
        ),

        const Spacer(),

        MyDrawerTile(
          text: "L O G O U T",
          icon: Icons.logout,
          onTap: () {
            logout();
            Navigator.pushReplacementNamed(context, '/login');
          },
        ),

        const SizedBox(height: 25),
      ],
    ),
    );
  }
}

