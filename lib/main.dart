import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:webrestobar/l10n/app_localizations.dart';

import 'screens/home_page.dart';
import 'screens/menu_page.dart';
import 'screens/reservation_page.dart';
import 'screens/cart_page.dart';
import 'services/cart_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CartProvider())],
      child: const WebrestobarApp(),
    ),
  );
}

class WebrestobarApp extends StatefulWidget {
  const WebrestobarApp({super.key});

  @override
  State<WebrestobarApp> createState() => WebrestobarAppState();

  static WebrestobarAppState of(BuildContext context) =>
      context.findAncestorStateOfType<WebrestobarAppState>()!;
}

class WebrestobarAppState extends State<WebrestobarApp> {
  Locale _locale = const Locale('es');

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Modern Bar & Resto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.amber,
        brightness: Brightness.dark,
      ),
      locale: _locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', ''), Locale('es', '')],
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/reservation': (context) => const ReservationPage(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
