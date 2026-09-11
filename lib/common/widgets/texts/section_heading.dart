import 'package:flutter/material.dart';

class ESectionHeading extends StatelessWidget {
  const ESectionHeading({
    super.key,
    required this.title,
    this.showActionButton = true,
    this.actionText = 'View all',
    this.onPressed,
    this.textColor,
    this.fontSize,
  });

  /// Main heading text, e.g. "Popular Categories", "Popular Products"
  final String title;

  /// Whether the trailing "View all" action is shown.
  /// false for headings like "Popular Categories" (no action in the screenshot)
  /// true for headings like "Popular Products" (has "View all")
  final bool showActionButton;

  /// Trailing button label — defaults to "View all" but can be overridden
  /// e.g. "See more", "Show all"
  final String actionText;

  /// Callback for the trailing action button
  final VoidCallback? onPressed;

  /// Optional override for title color.
  /// If null, falls back to the current theme's titleLarge color
  /// (lets it adapt automatically between the blue header and white body sections)
  final Color? textColor;

  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: textColor,
              fontSizeFactor: fontSize != null ? 1 : 1,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              actionText,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: textColor,
              ),
            ),
          ),
      ],
    );
  }
}