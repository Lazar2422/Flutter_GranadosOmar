# To-Do List App en Flutter

Esta es una aplicación sencilla de **lista de tareas (To-Do List)** desarrollada con **Flutter**. Permite al usuario **añadir, visualizar y eliminar tareas** en una interfaz simple.

---

## 1. Instalación y ejecución

### Requisitos
- Tener instalado [Flutter](https://docs.flutter.dev/get-started/install)
- Un editor compatible como **Android Studio** o **Visual Studio Code**
- Un emulador configurado o un dispositivo físico conectado

### Pasos

1. Clonar este repositorio:
``` bash
    git clone https://github.com/tuusuario/todolist-flutter.git
    cd todolist-flutter
```
2. Instalar dependencias:
``` bash
flutter pub get
```
3. Ejecutar la app en modo debug:
``` bash
flutter run
```
## 2. Estructura principal del proyecto

El archivo principal es lib/main.dart, donde se define toda la aplicación:
``` bash
lib/
 └── main.dart   # Código principal de la app
```
## 3. Punto de entrada
``` dart
void main() {
  runApp(const ToDoApp());
}
```
- runApp: Inicia la aplicación Flutter.

- ToDoApp: Widget raíz que define el tema y la pantalla principal.

## 4. Pantalla principal
``` dart
class TodoHome extends StatefulWidget {
  const TodoHome({super.key});

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  final List<Map<String, dynamic>> _tasks = [];
  final TextEditingController _controller = TextEditingController();

  void _addTask() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      _tasks.add({"title": _controller.text.trim(), "done": false});
      _controller.clear();
    });
  }

  void _toggleTask(int index) {
    setState(() {
      _tasks[index]["done"] = !_tasks[index]["done"];
    });
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("To-Do List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Escribe una nueva tarea...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addTask,
                  child: const Text("Añadir"),
                ),
              ],
            ),
          ),
          Expanded(
            child: _tasks.isEmpty
                ? const Center(
                    child: Text(
                      "No hay tareas aún",
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                : ListView.builder(
                    itemCount: _tasks.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: ListTile(
                          leading: Checkbox(
                            value: _tasks[index]["done"],
                            onChanged: (_) => _toggleTask(index),
                          ),
                          title: Text(
                            _tasks[index]["title"],
                            style: TextStyle(
                              decoration: _tasks[index]["done"]
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _deleteTask(index),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
```

- _tasks: Lista que almacena las tareas.

- TextField: Campo para escribir la nueva tarea.

- ListView.builder: Muestra todas las tareas dinámicamente.

- Checkbox: Permite marcar tareas como completadas.

- IconButton: Permite eliminar tareas.

## 5. Añadir tareas
``` dart
void _addTask() {
  if (_controller.text.trim().isEmpty) return;
  setState(() {
    _tasks.add({"title": _controller.text.trim(), "done": false});
    _controller.clear();
  });
}
```
- Verifica que el texto no esté vacío.

- Agrega la nueva tarea a la lista.

- Limpia el campo de entrada.

## 6. Generar APK
Para compilar la aplicación en Android:
``` bash
flutter build apk --release
```
El archivo generado se encuentra en:
``` swift
build/app/outputs/flutter-apk/app-release.apk
```