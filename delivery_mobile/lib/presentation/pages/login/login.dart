import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/medium-shot-friends-chatting-bistro_23-.jpg'), // Change path to your image
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            const Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),const SizedBox(height: 20,),
            const Center(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0,50,0,0),
                child: Text('Time to eat, Let\'s sign in',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w200,
                  wordSpacing: 1
                ),),
              ),
            ),const SizedBox(height: 20,),
            Center(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0,200,0,0),
                child: ElevatedButton(style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent
                  ),fixedSize: MaterialStateProperty.all(const Size(312, 40))
                
                ),
                
                  onPressed: () {
                    
                  },
                  child: const Text('Login',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 11,
                    color: Colors.white
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
