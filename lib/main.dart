import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
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
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: const Center(
          child: Text('Login Page'),
        ),
        backgroundColor: const Color.fromARGB(255, 32, 31, 32),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 5
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              const TextField(
              obscureText: false,
                decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                labelText: 'Login or eMail'
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
              obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                labelText: 'Password'
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
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationPage()),
                        );
                      },
                      child: const Text('Registration'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: const Center(
          child: Text('Registration Page'),
        ),
        backgroundColor: const Color.fromARGB(255, 32, 31, 32),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 5
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
              obscureText: false,
                decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                labelText: 'Login',
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              const TextField(
              obscureText: false,
                decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                labelText: 'Your eMail',
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              const TextField(
              obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                labelText: 'Password',
                ),
              ),
                const SizedBox(
                height: 15,
              ),
              const TextField(
              obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                labelText: 'Confirm password',
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Popa'),
                    duration: Duration(milliseconds: 500),
                  ));
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(50, 20, 50, 20)),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Log in')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}