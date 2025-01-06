import 'package:flutter/material.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = true;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JetBlack SaaS',
      theme: _isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              _isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: AppTheme.primaryPurple,
            ),
            onPressed: _toggleTheme,
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(
                  Icons.menu,
                  color: AppTheme.primaryPurple,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          semanticLabel: 'Navigation Menu',
          elevation: 16.0,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: AppTheme.primaryPurple,
                ),
                title: Text(
                  'Home',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.primaryPurple,
                      ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: AppTheme.primaryPurple,
                ),
                title: Text(
                  'Account',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.primaryPurple,
                      ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: AppTheme.primaryPurple,
                ),
                title: Text(
                  'Help',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.primaryPurple,
                      ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.login,
                  color: AppTheme.primaryPurple,
                ),
                title: Text(
                  'Login',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.primaryPurple,
                      ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            'Welcome to JetBlack SaaS',
            style: TextStyle(
              color: AppTheme.primaryPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
