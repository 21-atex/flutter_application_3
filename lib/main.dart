import 'package:flutter/material.dart';
import 'package:flutter_application_3/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(      
        decoration: const BoxDecoration(
        gradient: LinearGradient(colors: colores, transform: GradientRotation(0.69))
      ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Login Page', style: TextStyle(color: Colors.white, fontSize: 40)),
              const SizedBox(
                height: 45,
              ),
              const Icon(Icons.login, size: 30, color: Color.fromARGB(255, 255, 255, 255)), 
                const SizedBox(
                height: 45,
              ),
              const SizedBox(
                width: 500,
                child:              
                  TextField(
                  obscureText: false,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    labelText: 'Login or eMail'
                    ),
                  ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 500,
                child:               
                  TextField(
                  obscureText: true,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    labelText: 'Password'
                    ),
                  ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('POPA'),
                    duration: Duration(milliseconds: 500),
                  ));
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(50, 20, 50, 20)),
                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",style: TextStyle(color: Colors.white)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationPage()),
                        );
                      },
                      child: const Text('Registration', style: TextStyle(color: Colors.white))
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(      
        decoration: const BoxDecoration(
        gradient: LinearGradient(colors: colores, transform: GradientRotation(0.69))
      ),
    child: Scaffold(
      backgroundColor: Colors.transparent,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Registration Page', style: TextStyle(color: Colors.white, fontSize: 40)),
              const SizedBox(
                height: 45,
              ),
              const Icon(Icons.how_to_reg, size: 30, color: Color.fromARGB(255, 255, 255, 255)), 
              const SizedBox(
                height: 45,
              ),
              const SizedBox(
                width: 500,
                child:               
                  TextField(
                  obscureText: false,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    labelText: 'Login'
                    ),
                  ),
              ),
              const SizedBox(
                height: 15,
              ),
                            const SizedBox(
                width: 500,
                child:               
                  TextField(
                  obscureText: false,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    labelText: 'eMail'
                    ),
                  ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 500,
                child:               
                  TextField(
                  obscureText: true,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    labelText: 'Password'
                    ),
                  ),
              ),
               const SizedBox(
                height: 15,
              ),
               const SizedBox(
                width: 500,
                child:               
                  TextField(
                  obscureText: true,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white)),
                    labelText: 'Confirm Password'
                    ),
                  ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('POPA'),
                    duration: Duration(milliseconds: 500),
                  ));
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(50, 20, 50, 20)),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already registered?",style: TextStyle(color: Colors.white)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text('Enter', style: TextStyle(color: Colors.white))
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}