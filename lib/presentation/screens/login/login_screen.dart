import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tarea1/presentation/providers/provider.dart';

class LoginScreen extends StatefulWidget  {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool viewPassword = true;

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              const Text("PANTALLA LOGIN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              const SizedBox(height: 20),
              TextField(
                cursorColor: Colors.white,
                controller: usernameController,
                decoration: InputDecoration
                (
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.15),
                  hintText: "Usuario",
                  hintStyle: const TextStyle
                  (
                    color: Color.fromARGB(255, 0, 0, 0)
                  ),
                  enabledBorder: OutlineInputBorder
                  (
                    borderSide: const BorderSide
                    (
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  focusedBorder: OutlineInputBorder
                  (
                    borderSide: const BorderSide
                    (
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              ),
              const SizedBox(height: 20),

              TextField(
                cursorColor: const Color.fromARGB(255, 0, 0, 0),
                controller: passwordController,
                decoration: InputDecoration
                (
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.15),
                  hintText: "Contraseña",
                  hintStyle: const TextStyle
                  (
                    color: Color.fromARGB(255, 0, 0, 0)
                  ),
                  enabledBorder: OutlineInputBorder
                  (
                    borderSide: const BorderSide
                    (
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  focusedBorder: OutlineInputBorder
                  (
                    borderSide: const BorderSide
                    (
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  suffixIcon: SizedBox(
                    width: 55,
                    child: IconButton(
                      icon: const Icon(Icons.visibility_outlined),
                      color: const Color.fromARGB(255, 0, 0, 0),
                      onPressed: () 
                      {
                        setState(() {
                          viewPassword = !viewPassword;
                        });
                      }
                    )
                  )
                ),
                obscureText: viewPassword,
              ),
              const SizedBox(height: 20),

              SizedBox(
                width: 400,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if(provider.comprobarLogin(usernameController.text, passwordController.text)){
                      context.pushNamed("home");
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 189, 89, 89)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      )
                    )
                  ),
                  child: const Text('Login',
                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 245, 240, 237))),
                ),
              ),
              const SizedBox(height: 60),

            ],
          ),
        ),
      ),
      )
    );
  }
}