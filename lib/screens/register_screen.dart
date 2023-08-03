import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:petow_app/screens/page_view.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  void _register(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text,
      );

      String? uid = userCredential.user!.uid;
      String? fullName = fullNameController.text.trim();
      String? username = usernameController.text.trim();

      DatabaseReference usersRef = FirebaseDatabase.instance.ref().child('users');

      await usersRef.child(uid).set({
        'full_name': fullName,
        'username': username,
        'email': emailController.text.trim(),
      });

      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const PetowPageView(),
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage = 'Bir hata oluştu.';

      if (e.code == 'weak-password') {
        errorMessage = 'Şifre zayıf.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = 'Bu e-posta adresi zaten kullanımda.';
      } else {
        errorMessage = 'Bir hata oluştu: ${e.message}';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          duration: const Duration(seconds: 3),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bir hata oluştu: $e'),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      _animationController,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100, bottom: 30),
                    child: FadeTransition(
                      opacity: _animation,
                      child: Image.asset('assets/png/ic_petow.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      controller: fullNameController,
                      maxLength: 50,
                      decoration: _RegisterInputDecorator().signInTextFieldDecoration,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      controller: usernameController,
                      maxLength: 50,
                      decoration: _RegisterInputDecorator().signInTextFieldDecoration2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      controller: emailController,
                      maxLength: 50,
                      decoration: _RegisterInputDecorator().signInTextFieldDecoration3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      controller: passwordController,
                      maxLength: 50,
                      obscureText: true,
                      decoration: _RegisterInputDecorator().signInTextFieldDecoration4,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _register(context),
                    child: const Text(
                      'Kayıt Ol',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Zaten Hesabın var mı? Giriş Yap',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterInputDecorator {
  final signInTextFieldDecoration = const InputDecoration(
    border: OutlineInputBorder(),
    prefix: Icon(Icons.abc_outlined),
    filled: false,
    labelText: 'username',
  );
  final signInTextFieldDecoration2 = const InputDecoration(
    border: OutlineInputBorder(),
    prefix: Icon(Icons.abc_outlined),
    filled: false,
    labelText: 'full_name',
  );
  final signInTextFieldDecoration3 = const InputDecoration(
    border: OutlineInputBorder(),
    prefix: Icon(Icons.email_outlined),
    filled: false,
    labelText: AutofillHints.email,
  );
  final signInTextFieldDecoration4 = const InputDecoration(
    border: OutlineInputBorder(),
    prefix: Icon(Icons.password_outlined),
    filled: false,
    labelText: 'Şifre',
  );
}
