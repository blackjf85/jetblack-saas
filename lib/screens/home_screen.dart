import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../components/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 600),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Text(
                    'JetBlack',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      color: AppTheme.primaryPurple,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Description
                  Text(
                    'The fastest and most customizable SaaS POS solution on the market.',
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 16),

                  // Bullet points
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBulletPoint(
                          'Lightning-fast transaction processing', context),
                      _buildBulletPoint(
                          'Fully customizable to your business needs', context),
                      _buildBulletPoint(
                          'Seamless integration with existing systems',
                          context),
                      _buildBulletPoint('24/7 customer support', context),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Buttons
                  CustomButton(
                    onPressed: () {},
                    text: 'Sign Up',
                    color: AppTheme.primaryPurple,
                    icon: Icons.person_add,
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    onPressed: () {},
                    text: 'Login',
                    color: Theme.of(context).colorScheme.secondary,
                    icon: Icons.login,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6.0, right: 8.0),
            child: Icon(Icons.circle, size: 8),
          ),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
