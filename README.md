# 🍷 Resto-Bar Demo Web/App

Una **demo completa y moderna** para un bar o restaurante, construida enteramente en **Flutter** para funcionar como aplicación Web y Móvil compartiendo exactamente el mismo código fuente.

**👉 [Ver Demo Interactiva en Vivo](https://estebanrdz6.github.io/resto-bar-demo/) 👈**

---

## 🌟 Características Principales

Esta plantilla está diseñada como una herramienta comercial de alto impacto para presentar a potenciales clientes del rubro gastronómico, demostrando el poder de un desarrollo moderno, unificado y reactivo.

- 🛒 **Sistema de Pedidos (Carrito):** Los clientes pueden agregar platos al carrito, modificar porciones y simular un flujo de *checkout*. Totalmente manejado en vivo a través del gestor de estado `Provider`.
- 📅 **Reservas Inteligentes:** Un formulario completo con selectores nativos de calendario y reloj para agendar una mesa en el restaurante.
- 🎨 **Diseño Moderno (UI/UX Premium):** Uso de **Material 3**, `Dark Mode` profundo por defecto, tipografías atractivas y un diseño `Hero` en la pantalla de inicio.
- 📱 **100% Responsivo:** La interfaz se adapta automáticamente a teléfonos móviles, tablets y monitores de escritorio.
- 🌐 **Internacionalización (i18n):** Traducción en tiempo real entre **Inglés** y **Español** sin necesidad de recargar la página, utilizando `flutter_localizations` y `.arb`.
- 🚀 **Performance:** Las imágenes y los componentes cargan rápidamente usando el motor web optimizado de Flutter.

---

## 🛠️ Stack Tecnológico

- **Framework:** [Flutter](https://flutter.dev/) (>= 3.x)
- **Gestión de Estado:** [`provider`](https://pub.dev/packages/provider)
- **Internacionalización:** `flutter_localizations` + `intl` (.arb files)
- **UI:** Material Design 3

### 📂 Estructura del Proyecto

La arquitectura sigue las mejores prácticas de un desarrollo modular y fácilmente escalable:

```text
lib/
 ┣ data/         # Datos mock para simular comportamiento (Platos, etc)
 ┣ l10n/         # Archivos de traducción y configuración multi-idioma
 ┣ models/       # Clases de información (ej. Dish, CartItem)
 ┣ screens/      # Páginas de la aplicación
 ┣ services/     # Lógica de negocio y Providers (Gestores de estado)
 ┣ widgets/      # Componentes visuales reutilizables (ej. NavBar)
 ┗ main.dart     # Punto de entrada de la aplicación
```

---

*Desarrollado con ❤️ para mostrar el potencial comercial de Flutter multiplataforma.*
