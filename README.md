# Portafolio de Aplicaciones Flutter

## Descripción General

Este repositorio contiene tres aplicaciones desarrolladas en **Flutter**:

1. **Meal Finder**: Explora comidas aleatorias, busca por nombre y visualiza ingredientes e instrucciones.
2. **Calculadora de Propinas**: Calcula propinas según el total de la cuenta y el porcentaje seleccionado.
3. **To-Do List**: Permite agregar, marcar como completadas y eliminar tareas.

Todas las apps están desarrolladas con un enfoque práctico y visualmente atractivo, utilizando Flutter y Dart.

---

## Tecnologías y Dependencias

* **Flutter 3.x o superior**
* **Dart**
* Dependencias principales por proyecto:

| Proyecto    | Dependencias principales |
| ----------- | ------------------------ |
| Meal Finder | `http`                   |
| Calculadora | Ninguna externa          |
| To-Do List  | Ninguna externa          |

> Cada proyecto tiene su propio `pubspec.yaml` con dependencias específicas.

---

## Estructura del Repositorio

```text
flutter_apps/
│
├── meal_finder/
│   ├── lib/                     # Código fuente
│   ├── pubspec.yaml
│   └── README.md
│
├── calculadora/
│   ├── lib/
│   ├── pubspec.yaml
│   └── README.md
│
├── todo_list/
│   ├── lib/
│   ├── pubspec.yaml
│   └── README.md
│
└── README.md                    # Este archivo general
```

---

## Instalación y Ejecución

Para ejecutar cualquier proyecto:

1. Clonar el repositorio:

```bash
git clone https://github.com/Lazar2422/Flutter_GranadosOmar
cd flutter_apps/flutter
```

2. Instalar dependencias:

```bash
flutter pub get
```

3. Ejecutar en un emulador o dispositivo físico:

```bash
flutter run
```

4. Para generar un APK:

```bash
flutter build apk --release
```

* El APK se guardará en: `build/app/outputs/flutter-apk/app-release.apk`

---

## Descripción de los Proyectos

### 1️⃣ Meal Finder

* **Funcionalidad**: Mostrar comidas aleatorias, búsqueda por nombre, detalle completo con ingredientes e instrucciones.
* **Pantalla principal**: GridView de imágenes redondeadas con nombres.
* **Pantalla de detalle**: Ingredientes, medidas e instrucciones completas, scrollable.
* **Dependencias**: `http`

### 2️⃣ Calculadora de Propinas

* **Funcionalidad**: Calcula propina según el total de la cuenta y porcentaje elegido.
* **UI**: Tema oscuro, botones y dropdown para seleccionar porcentaje.
* **Dependencias**: Ninguna externa.

### 3️⃣ To-Do List

* **Funcionalidad**: Agregar tareas, marcar como completadas, eliminar tareas.
* **UI**: Lista simple, organizada y scrollable.
* **Dependencias**: Ninguna externa.

---