import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double borderRadius;
  final Color? backgroundColor;
  final double elevation;

  const CustomCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = 8.0,
    this.backgroundColor,
    this.elevation = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Card(
      elevation: Theme.of(context).brightness == Brightness.dark ? 4.0 : 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(
          color: Color.fromRGBO(
            Theme.of(context).colorScheme.outline.r.round(),
            Theme.of(context).colorScheme.outline.g.round(),
            Theme.of(context).colorScheme.outline.b.round(),
            Theme.of(context).brightness == Brightness.dark ? 0.1 : 0.2,
          ),
          width: 0.5,
        ),
      ),
      color: backgroundColor ?? Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: isSmallScreen ? const EdgeInsets.all(12) : padding,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: isSmallScreen ? screenWidth * 0.9 : 600,
          ),
          child: child,
        ),
      ),
    );
  }
}
