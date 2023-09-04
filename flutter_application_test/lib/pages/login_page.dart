import 'package:flutter/material.dart';
import 'package:flutter_application_test/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false, // TO AVOID BOTTOM OVERFLOW WHEN OPENING KEYBOARD
      // Need a scroll view to scroll when opening keyboard
      body: SingleChildScrollView(
        // Need a SizedBox with fixed height for dynamic Spacers to work properly
        child: SizedBox(
          height: MediaQuery.of(context).size.height, // Height of the device
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  "Hello, welcome back !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Sign in to continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2)),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2)),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: Text("Forgot password?"),
                  ),
                ),
                SizedBox(height: 32),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                      // pushReplacementNamed : pour empêcher de revenir en arrière sur la page Login
                      Navigator.of(context).pushReplacementNamed('/main');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, foregroundColor: Colors.black),
                    child: Text("Sign in"),
                  ),
                ),
                Spacer(),
                Text("or log in with", style: TextStyle(color: Colors.white)),
                SizedBox(height: 16),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png", width: 22, height: 22),
                        SizedBox(width: 12),
                        Text("Log in with Google"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 18),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/facebook.png", width: 22, height: 22),
                        SizedBox(width: 12),
                        Text("Log in with Facebook"),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text("Don't have an account? ", style: TextStyle(color: Colors.white)),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(foregroundColor: Colors.amber),
                      child:
                          Text("Sign up", style: TextStyle(decoration: TextDecoration.underline)),
                    )
                  ],
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
