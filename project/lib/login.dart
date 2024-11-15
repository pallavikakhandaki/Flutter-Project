
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override   
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _showPassword = false;
  

  Future<void> login() async{
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const MyHomePage()),
        (Route route) => false,
      );
    } on FirebaseAuthException catch(e) {
      String errorMessage = "Login failed. Please try again";
      if(e.code == 'user-not-found') {
        errorMessage = "No user found for this email.";
      } else if(e.code == 'wrong-password'){
        errorMessage = "Incorrect password.";
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
  }

  Widget signInPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello,",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Email",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Enter Password",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: passwordController,
              obscureText: !_showPassword, // This directly controls whether password is visible
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword; // Toggle the password visibility
                    });
                  },
                  child: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off, // Change icon based on _showPassword state
                    color: Colors.green[900],
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.amber[900],
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: login,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                "------------Or Sign in with------------",
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/google.png",
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 30),
                Image.asset(
                  "assets/images/facebook.png",
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.amber[900],
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/start page.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                    Colors.black.withOpacity(0.9),
                  ],
                  stops: const [0.0, 0.4, 1.0],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/chef-hat.png",
                    width: 100,
                    height: 100,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Get Cooking",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Simple way to find Tasty Recipe",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 150),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => Scaffold(
                          body: signInPage(),
                        ),
                      ), 
                      (route) => true,
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green[500],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Start Cooking",
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
