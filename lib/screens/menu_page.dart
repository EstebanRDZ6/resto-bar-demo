import 'package:flutter/material.dart';
import 'package:webrestobar/l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../data/mock_data.dart';
import '../models/dish.dart';
import '../services/cart_provider.dart';
import '../widgets/navbar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String selectedCategory = 'all';

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context).languageCode;

    List<Dish> filteredDishes = MockData.dishes;
    if (selectedCategory != 'all') {
      filteredDishes =
          filteredDishes.where((d) => d.category == selectedCategory).toList();
    }

    return Scaffold(
      appBar: const NavBar(),
      body: Column(
        children: [
          // Filters
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 8,
              children: [
                _buildFilterChip('all', 'Todos / All', l10n),
                _buildFilterChip('starters', l10n.starters, l10n),
                _buildFilterChip('mains', l10n.mains, l10n),
                _buildFilterChip('drinks', l10n.drinks, l10n),
                _buildFilterChip('desserts', l10n.desserts, l10n),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                childAspectRatio: 0.8,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: filteredDishes.length,
              itemBuilder: (context, index) {
                final dish = filteredDishes[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.network(dish.imageUrl, fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    dish.getName(locale),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  '\$${dish.price.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              dish.getDescription(locale),
                              style: const TextStyle(color: Colors.grey),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: dish.inStock
                                    ? () {
                                        context.read<CartProvider>().addItem(
                                              dish,
                                            );
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              '${dish.getName(locale)} added to cart',
                                            ),
                                          ),
                                        );
                                      }
                                    : null,
                                child: Text(
                                  dish.inStock
                                      ? l10n.addToCart
                                      : l10n.outOfStock,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(
    String category,
    String label,
    AppLocalizations l10n,
  ) {
    return FilterChip(
      selected: selectedCategory == category,
      label: Text(label),
      onSelected: (selected) {
        setState(() {
          selectedCategory = category;
        });
      },
      selectedColor: Colors.amber.withValues(alpha: 0.3),
      checkmarkColor: Colors.amber,
    );
  }
}
