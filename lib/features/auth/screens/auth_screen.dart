import 'package:amazone_clone/common/widgets/custom_button.dart';
import 'package:amazone_clone/common/widgets/custom_textfied.dart';
import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  static const String routeName = '/auth-screen';
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final AuthService authService = AuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }


  void signUpUser () {
    authService.signUpUser(context: context, email: _emailController.text, password: _passwordController.text, name: _nameController.text);
  }

  void signInUser(){
    authService.signInUser(context: context, email: _emailController.text, password: _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariable.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            ListTile(
              title: const Text(
                'Create an account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariable.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.signup)
              Container(
                padding: const EdgeInsets.all(8),
                color: GlobalVariable.backgroundColor,
                child: Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextFied(
                        controller: _nameController,
                        hintText: 'Name',
                      ),
                      const SizedBox(height: 10,),
                      CustomTextFied(
                        controller: _emailController,
                        hintText: 'Email',
                      ),
                      const SizedBox(height: 10,),
                      CustomTextFied(
                        controller: _passwordController,
                        hintText: 'Password',
                      ),
                      const SizedBox(height: 10,),
                      CustomButton(text: 'Sign up', onTap: (){
                          if(_signUpFormKey.currentState!.validate()) {
                            print(_signUpFormKey.currentState);
                            signUpUser();
                          }
                      })
                    ],
                  ),
                ),
              ),
            ListTile(
              tileColor: _auth == Auth.signup ? GlobalVariable.backgroundColor : GlobalVariable.greyBackgroundCOlor,
              title: const Text(
                'Sign-in',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariable.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if(_auth == Auth.signin)
               Container(
                
                padding: const EdgeInsets.all(8),
                color: GlobalVariable.backgroundColor,
                child: Form(
                  key: _signInFormKey,
                  child: Column(
                    children: [
                      CustomTextFied(
                        controller: _emailController,
                        hintText: 'Email',
                      ),
                      const SizedBox(height: 10,),
                      CustomTextFied(
                        controller: _passwordController,
                        hintText: 'Password',
                      ),
                      const SizedBox(height: 10,),
                      CustomButton(text: 'Sign in', onTap:() {
                        if(_signInFormKey.currentState!.validate()){
                          print(_signInFormKey.currentState);
                          signInUser();
                        }
                      },),
                    ],
                  ),
                ),
              ),
          ]),
        ),
      ),
    );
  }
}
