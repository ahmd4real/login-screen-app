
import 'package:flutter/material.dart';
import 'package:loginscreen/Ui/Widgets/customBustton.dart';

import '../Widgets/customTextFormField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = 'loginPage';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;
  bool loading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return
      
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green ,
          title: const Text('Login Screen App',style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Form(
          key: formKey,
          child: ListView(
            children: [
             
              const Padding(
                padding: EdgeInsets.symmetric(vertical:  32.0),
                child:  Text(
                  'Codeplayon',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 206, 230, 218)),
                ),
              ),
              CustomTextFormField(
                hidden: false,
                hintText: 'Email',
                onChanged: (data) {
                  email = data;
                },
              ),
              CustomTextFormField(
                hidden: true,
                hintText: 'Password',
                onChanged: (data) {
                  password = data;
                },
              ),
               Padding(
                padding: EdgeInsets.only(bottom: 16),
                child:  Center(
                  child: GestureDetector(
                        onTap: () {
                          //Navigator.pushNamed(context, RegisterPage.id);
                        },
                        child: const Text('Forget password',
                            style: TextStyle(
                                color: Color.fromARGB(255, 206, 230, 218)))),
                )
              ),
              CustomButton(
                text: 'Login',
                // onTap: () async {
                //   if (formKey.currentState!.validate()) {
                //     setState(() {
                //       loading = true;
                //     });
                //     try {
                //       await loginUser();
                //       Navigator.pushNamed(context, ChatPage.id,
                //           arguments: email);
                //     } on FirebaseAuthException catch (e) {
                //       if (e.code == 'user-not-found') {
                //         snackBar(context, 'User not found');
                //       } else if (e.code == 'wrong-password') {
                //         snackBar(context, 'Wrong password');
                //       }
                //     }

                //     setState(() {
                //       loading = false;
                //     });
                //   }
                // },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account? ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 206, 230, 218))),
                  GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: const Text('Sign Up',
                          style: TextStyle(
                              color: Color.fromARGB(255, 206, 230, 218))))
                ],
              )
            ],
          ),
        ),
    
    );
  }


}
