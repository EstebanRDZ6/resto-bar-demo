import '../models/dish.dart';

class MockData {
  static List<Dish> dishes = [
    Dish(
      id: '1',
      nameEs: 'Ceviche Clásico',
      nameEn: 'Classic Ceviche',
      descriptionEs:
          'Pescado fresco marinado en jugo de limón, ají y cilantro.',
      descriptionEn:
          'Fresh fish marinated in lime juice, chili pepper and cilantro.',
      ingredientsEs: [
        'Pescado',
        'Limón',
        'Ají limo',
        'Cilantro',
        'Cebolla roja',
      ],
      ingredientsEn: ['Fish', 'Lime', 'Limo chili', 'Cilantro', 'Red onion'],
      price: 18.00,
      imageUrl:
          'https://images.unsplash.com/photo-1535492211915-01ce543dd2a5?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      category: 'starters',
    ),
    Dish(
      id: '2',
      nameEs: 'Lomo Saltado',
      nameEn: 'Lomo Saltado',
      descriptionEs:
          'Trozos de carne de res salteados con cebolla, tomate y salsa de soya.',
      descriptionEn:
          'Beef tenderloin stir-fry with onions, tomatoes and soy sauce.',
      ingredientsEs: [
        'Carne de res',
        'Cebolla',
        'Tomate',
        'Salsa de soya',
        'Papas fritas',
      ],
      ingredientsEn: ['Beef', 'Onion', 'Tomato', 'Soy sauce', 'French fries'],
      price: 26.00,
      imageUrl:
          'https://images.unsplash.com/photo-1626200230232-0bac7b882afb?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      category: 'mains',
    ),
    Dish(
      id: '3',
      nameEs: 'Pisco Sour',
      nameEn: 'Pisco Sour',
      descriptionEs:
          'Cóctel peruano a base de Pisco, jugo de limón, jarabe de goma y clara de huevo.',
      descriptionEn:
          'Peruvian cocktail based on Pisco, lime juice, simple syrup and egg white.',
      ingredientsEs: [
        'Pisco',
        'Limón',
        'Jarabe de goma',
        'Clara de huevo',
        'Amargo de Angostura',
      ],
      ingredientsEn: [
        'Pisco',
        'Lime',
        'Simple syrup',
        'Egg white',
        'Angostura bitters',
      ],
      price: 12.00,
      imageUrl:
          'https://images.unsplash.com/photo-1556679343-c7306c1976bc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      category: 'drinks',
    ),
    Dish(
      id: '4',
      nameEs: 'Tiramisú Moderno',
      nameEn: 'Modern Tiramisu',
      descriptionEs:
          'Clásico postre italiano con un toque moderno y helado de café.',
      descriptionEn:
          'Classic Italian dessert with a modern twist and coffee ice cream.',
      ingredientsEs: [
        'Mascarpone',
        'Café',
        'Bizcocho',
        'Cacao',
        'Helado de café',
      ],
      ingredientsEn: [
        'Mascarpone',
        'Coffee',
        'Sponge cake',
        'Cocoa',
        'Coffee ice cream',
      ],
      price: 10.00,
      imageUrl:
          'https://images.unsplash.com/photo-1571115177098-24ec42ed204d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      category: 'desserts',
    ),
  ];
}
