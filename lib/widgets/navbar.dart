import 'package:flutter/material.dart';
import 'package:webrestobar/l10n/app_localizations.dart';
import '../main.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context).languageCode;

    return AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.restaurant, color: Colors.amber),
          const SizedBox(width: 8),
          Text(
            l10n.appTitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        if (MediaQuery.of(context).size.width > 600) ...[
          TextButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/'),
            child: Text(l10n.home),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/menu'),
            child: Text(l10n.menu),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/reservation'),
            child: Text(l10n.reservations),
          ),
        ],
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
        ),
        DropdownButton<String>(
          value: locale,
          underline: const SizedBox(),
          icon: const Icon(Icons.language),
          onChanged: (String? newValue) {
            if (newValue != null) {
              WebrestobarApp.of(context).setLocale(Locale(newValue));
            }
          },
          items: const [
            DropdownMenuItem(value: 'en', child: Text('EN')),
            DropdownMenuItem(value: 'es', child: Text('ES')),
          ],
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
