# Calculadora de Propinas en Flutter

Aplicación sencilla que permite calcular la **propina** y el **total a pagar** en un restaurante.

---

## 1. Instalación y ejecución

### Requisitos
- Tener instalado [Flutter](https://docs.flutter.dev/get-started/install)
- Android Studio o Visual Studio Code
- Emulador o dispositivo físico conectado

### Pasos

1. Clonar el repositorio:
```bash
git clone https://github.com/Lazar2422/Flutter_GranadosOmar
cd calculadora_propinas
```
2. Instalar dependencias:
``` bash
flutter pub get
```
3. Ejecutar la app:
```bash
flutter run
```
## 2. Funcionamiento

- Ingresar el total de la cuenta en el campo de texto.

- Seleccionar el porcentaje de propina deseado.

- Presionar el botón Calcular.

- La app mostrará la propina y el total a pagar.

## 3. Código explicado

- TextField → Para ingresar el total de la cuenta.

- DropdownButton → Seleccionar porcentaje de propina.

- ElevatedButton → Botón para calcular.

- Text → Mostrar resultado de propina y total.

- setState → Actualiza la interfaz cuando cambian los valores.

## 4. Generar APK
``` bash
flutter build apk --release
```
El APK se encontrará en:
``` swift
build/app/outputs/flutter-apk/app-release.apk
```