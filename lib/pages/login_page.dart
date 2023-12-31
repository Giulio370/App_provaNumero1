import 'package:app_prova_numero1/components/my_button.dart';
import 'package:app_prova_numero1/components/my_textfield.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

//Text Controller
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController =  TextEditingController();

  LoginPage({super.key});

  //Login Method
  void login() {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(Icons.person, size: 80, color: Theme.of(context).colorScheme.inversePrimary),
          
              const SizedBox(height: 25),
              //app name
              Text("M I N I M A L", style: TextStyle(fontSize: 20),),
          
              const SizedBox(height: 50,),
          
          
              //email textfield
              MyTextField(
                hintText: "Email", 
                obscureText: false, 
                controller: emailController
                ),
          

              const SizedBox(height: 10,),

              //password textfield
              MyTextField(
                hintText: "Password", 
                obscureText: true, 
                controller: passwordController
                ),

              const SizedBox(height: 10,),
          
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                ],
              ),
              const SizedBox(height: 25),

              //sign in button 
              MyButton(text: "Login", 
              onTap: login,),

              const SizedBox(height: 25),

          
              //don't have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
                  GestureDetector(
                    onTap:(){},
                    child: Text(" Register Here", style: TextStyle(
                      fontWeight: FontWeight.bold, 
                    
                    )  ),
                  ),
                ],
              )
            ],
            
          ),
        ),
      ),
    );
  }
}