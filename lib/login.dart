import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController emailControl;
  late final TextEditingController passControl;

  @override
  void initState() {
    emailControl = TextEditingController();
    passControl = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailControl.dispose();
    passControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login here!')),
      body: Column(
        children: [
          TextField(
            controller: emailControl,
            enableSuggestions: false,
            keyboardType: TextInputType.emailAddress,
            autocorrect: false,
            decoration:
            const InputDecoration(hintText: 'Email: abc@example.com'),
          ),
          TextField(
            controller: passControl,
            obscureText: true,
            enableSuggestions: false,
            decoration: const InputDecoration(hintText: 'Password'),
          ),
          TextButton(
            onPressed: () async {
              final email = emailControl.text;
              final password = passControl.text;
              try {
                final userCredentail = await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                    email: email, password: password);
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/evrv/', (route) => false);
              } on FirebaseAuthException catch (e) {
                print("Something bad happened");
                print(e.runtimeType);
                print(e.code);
              }
            },
            child: const Text('login'),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/register/', (route) => false);
              },
              child: const Text('Not Register yet, click here')),
        ],
      ),
    );
  }
}