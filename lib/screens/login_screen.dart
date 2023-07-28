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
                      child: Image.asset('assets/png/ic_petow.png')
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(maxLength: 50, decoration: _SignInInputDecorator().signInTextFieldDecoration3),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                    obscureText: true,
                    maxLength: 50, decoration: _SignInInputDecorator().signInTextFieldDecoration4,
                      ),
                  ),
                  
                  
                  
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const PetowPageView(),
                                        ),
                                        );
                    },
                    child: const Text(
                      'Giriş Yap',
                      style: TextStyle(color: Colors.blue),
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
