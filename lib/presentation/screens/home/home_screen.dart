import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea1/presentation/providers/provider.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    final provider = context.watch<AppProvider>();
    return Scaffold
    (
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Text('Usuario: ${provider.user} \nContraseña: ${provider.password}'),
      )
    );
  }
}