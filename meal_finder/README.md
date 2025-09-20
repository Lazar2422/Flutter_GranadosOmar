# Meal Finder - Flutter App
## Descripción

Meal Finder es una aplicación en Flutter que permite explorar comidas de todo el mundo utilizando la API de [TheMealDB](https://www.themealdb.com)

- Características principales:

- Explorar comidas aleatorias.

- Buscar comidas por nombre.

- Visualizar ingredientes y medidas completas.

- Ver instrucciones detalladas de cada comida.

## Tecnologías y Dependencias

- Flutter 3.x o superior

- Dart

- http: Para hacer solicitudes a la API REST.

En pubspec.yaml:

``` yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
```

## Instalación y Ejecución

### 1. Clonar Repositorio

``` bash
  git clone https://github.com/Lazar2422/Flutter_GranadosOmar

  cd meal_finder
```

### 2. Instalar dependencias:
``` bash
flutter pub get
``` 

### 3. Ejecutar en un emulador o dispositivo físico:
``` bash
flutter run
```

### 4. Para generar un APK (release):
```bash 
flutter build apk --release
```
- El APK se guardará en: build/app/outputs/flutter-apk/app-release.apk

## Estructura del Proyecto

``` text
meal_finder/
│
├── lib/
│   ├── main.dart            # Punto de entrada de la app
│   ├── models/
│   │   └── meal.dart        # Modelo de datos Meal
│   ├── services/
│   │   └── api_service.dart # Lógica para consumir la API
│   └── screens/
│       ├── home_screen.dart   # Pantalla principal con GridView y búsqueda
│       └── detail_screen.dart # Pantalla de detalle con ingredientes e instrucciones
│
├── pubspec.yaml              # Dependencias y assets
└── README.md                 # Este archivo
```

## Funcionalidad de la App

### 1. Pantalla Principal

- Muestra un GridView con comidas aleatorias.

- Cada celda tiene la imagen de la comida (redondeada) y su nombre.

- Barra de búsqueda para filtrar comidas por nombre.

### 2. Pantalla de Detalle

- Al tocar una comida, muestra:

- Imagen de la comida.

- Ingredientes con medidas.

- Instrucciones de preparación.

- Scrollable para mostrar todo el contenido.

### 3. Modelo de Datos Meal

- Campos: id, name, thumbnail

- Factory fromJson convierte un JSON de TheMealDB en un objeto Meal.

### 4. API Service

- getRandomMeals(int count) → Obtiene comidas aleatorias.

- searchMeals(String query) → Busca comidas por nombre.