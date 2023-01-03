import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';
import '../screens/categories_screen.dart';
class MainDrawer extends StatelessWidget {
  Widget buildListTitle(String title, IconData icon, BuildContext context, String routeName) {
      return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
              Navigator.of(context).pushReplacementNamed(routeName);
            },
      );
    }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Cooking',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            'Meals',
            Icons.restaurant,
            context,
            '/',
          ),
          buildListTitle(
            'Filters',
            Icons.settings,
            context,
            '/filters',
          ),
        ],
      ),
    );
  }
}
