import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petow_app/screens/page_view.dart';
import 'package:petow_app/screens/register_screen.dart';
//import 'package:test_application/demos/petow_home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _PetowSignInScreenState();
}

class _PetowSignInScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
 final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  Future<void> _login(BuildContext context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text,
    );
    _navigatorKey.currentState?.pushReplacement(
      
      MaterialPageRoute(
        builder: (context) => const PetowPageView(),
      ),
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found' || e.code == 'wrong-password') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Geçersiz e-posta veya şifre.'),
          duration: Duration(seconds: 3),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bir hata oluştu: ${e.message}'),
          duration: const Duration(seconds: 3),
        ),
      );
    }
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
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    emailController.dispose();
    passwordController.dispose();
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
                    padding: const EdgeInsets.only(top: 200, bottom: 30),
                    child: FadeTransition(
                      opacity: _animation,
                      child: Image.asset('assets/png/ic_petow.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      maxLength: 50,
                      decoration: _SignInInputDecorator().signInTextFieldDecoration3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      maxLength: 50,
                      decoration: _SignInInputDecorator().signInTextFieldDecoration4,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _login(context),
                    child: const Text(
                      'Giriş Yap',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ));
                },
                child: const Text(
                  'Hala hesabın yok mu? Kayıt ol',
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

class _SignInInputDecorator {
  final signInTextFieldDecoration3 = const InputDecoration(
    border: OutlineInputBorder(),
    filled: false,
    labelText: AutofillHints.email,
    prefix: Icon(Icons.email_outlined),
  );
  final signInTextFieldDecoration4 = const InputDecoration(
    border: OutlineInputBorder(),
    prefix: Icon(Icons.password_outlined),
    filled: false,
    labelText: 'Şifre',
  );
}
