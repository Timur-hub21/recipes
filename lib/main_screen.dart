import 'package:flutter/material.dart';
import 'package:my_new_app/screens/profile_screen.dart';
import 'package:my_new_app/screens/recipe_screen.dart';
import 'package:my_new_app/screens/your_recipes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _screens = [
    const RecipeScreen(),
    const YourRecipesScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pizza),
            label: 'Recepts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cookie_sharp),
            label: 'Your Recepts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
