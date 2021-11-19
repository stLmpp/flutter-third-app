import 'package:flutter/material.dart';
import 'package:third_app/page/settings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _buildListTile({
    required String title,
    required IconData icon,
    required void Function() onTap,
  }) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: theme.colorScheme.secondary,
            child: Text(
              'Cooking up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildListTile(
            title: 'Meals',
            icon: Icons.restaurant,
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          _buildListTile(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () {
              Navigator.of(context).pushNamed(Settings.routeName);
            },
          ),
        ],
      ),
    );
  }
}
