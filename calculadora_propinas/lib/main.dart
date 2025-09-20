import 'package:flutter/material.dart';

void main() {
  runApp(const TipCalculatorApp());
}

class TipCalculatorApp extends StatelessWidget {
  const TipCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Propinas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.tealAccent,
        scaffoldBackgroundColor: const Color(0xFF121212),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.tealAccent,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      home: const TipCalculatorHome(),
    );
  }
}

class TipCalculatorHome extends StatefulWidget {
  const TipCalculatorHome({super.key});

  @override
  State<TipCalculatorHome> createState() => _TipCalculatorHomeState();
}

class _TipCalculatorHomeState extends State<TipCalculatorHome> {
  final TextEditingController _billController = TextEditingController();
  double _tipPercent = 15.0;
  double _tipAmount = 0;
  double _totalAmount = 0;

  void _calculateTip() {
    final bill = double.tryParse(_billController.text);
    if (bill == null) return;

    setState(() {
      _tipAmount = bill * _tipPercent / 100;
      _totalAmount = bill + _tipAmount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Propinas'),
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _billController,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Total de la cuenta',
                labelStyle: const TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.tealAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.tealAccent, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('Porcentaje de propina:',
                    style: TextStyle(color: Colors.white70)),
                const SizedBox(width: 16),
                DropdownButton<double>(
                  dropdownColor: const Color(0xFF1E1E1E),
                  value: _tipPercent,
                  items: [10.0, 15.0, 20.0, 25.0].map((value) {
                    return DropdownMenuItem<double>(
                      value: value,
                      child: Text('${value.toInt()}%',
                          style: const TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _tipPercent = value!;
                      _calculateTip();
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateTip,
              child: const Text('Calcular'),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text('Propina: \$${_tipAmount.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 22, color: Colors.tealAccent)),
                  const SizedBox(height: 8),
                  Text('Total: \$${_totalAmount.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
