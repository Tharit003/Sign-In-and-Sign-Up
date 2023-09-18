import 'package:flutter/material.dart';
import 'package:flutter_project/component/myiconbutton.dart';
import 'package:flutter_project/component/mytextbutton.dart';
import 'package:flutter_project/component/mytextfiled.dart';
import 'package:flutter_project/component/mybutton.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
 SignInScreen({Key? key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void SignInUser() async {
    if (emailController.text != "" && passwordController.text != "") {
      print('it s ok');
    }else{
      print('Please input your email ad password');
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Hello, ready to get started ?",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            
              const SizedBox(height: 10),
              Text(
                "Please sign in your email and password ?",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              mytextfiled(
                controller: emailController,
                hintText: 'Enter your email', 
                labelText: 'Email', 
                obcureText: false),
              const SizedBox(height: 20),
              mytextfiled(
                controller: passwordController,
                hintText: 'Enter your password', 
                labelText: 'password', 
                obcureText: true),
                const SizedBox(height: 20,),
                const MyTextButton(lableText: 'Forgot password?', pageRoute: 'forgot',),
                const SizedBox(height: 25,),
                mybutton(onTap: SignInUser, hinText: 'sign in'),
                const SizedBox(height: 25,),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                        Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child:
                        Text('Or continue with',style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                       Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyIconButton(imagePath: "lib/assets/image/iconA.png"),
                    SizedBox(width: 10,),
                    MyIconButton(imagePath: "lib/assets/image/iconG.jpg"),
                  ],
                ),

                const SizedBox(height: 20,),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member', style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),),
                      MyTextButton(lableText: 'Register now', pageRoute: 'register',),
                    ],
                  ),
                ),
               const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
