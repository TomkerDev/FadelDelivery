import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'core/constants.dart';

void main() {
  runApp(const FadelApp());
}

class FadelApp extends StatelessWidget {
  const FadelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TestBackendPage(),
    );
  }
}

class TestBackendPage extends StatefulWidget {
  const TestBackendPage({super.key});

  @override
  State<TestBackendPage> createState() => _TestBackendPageState();
}

class _TestBackendPageState extends State<TestBackendPage> {
  String _message = "Cliquez pour tester la connexion";

  Future<void> _checkBackend() async {
  try {
    // On utilise ApiConstants.baseUrl au lieu d'écrire l'URL en dur
    final response = await http.get(Uri.parse('${ApiConstants.baseUrl}/health'));
    
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() => _message = "Succès : ${data['message']}");
    }
  } catch (e) {
    setState(() => _message = "Erreur : Impossible de joindre le serveur.");
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FaDel Delivery - Admin Test"), backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_message, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkBackend,
              child: const Text("Vérifier Connexion Docker"),
            ),
          ],
        ),
      ),
    );
  }
}