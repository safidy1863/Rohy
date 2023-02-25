import 'package:flutter/material.dart';
import 'package:rohy/shared/widget/custom_button.dart';
import 'package:rohy/shared/widget/custom_textfield.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _showPassword = false;

  void onTapShowPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
    print("Bonour");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Image(
                image: AssetImage("assets/images/logo.jpg"),
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
                fontWeight: FontWeight.w600
              ),
            ),
            _buildForm()
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextField(
            prefixIcon: Icons.alternate_email,
            hintText: 'Email',
          ),
          const SizedBox(height: 15,),
          CustomTextField(
            prefixIcon: Icons.key,
            hintText: 'Mot de passe',
            textInputType: TextInputType.visiblePassword,
            obscureText: !_showPassword,
            onTapShowPassword: onTapShowPassword,
          ),
          Container(
            alignment: Alignment.topRight,
            child:TextButton(
              onPressed: () => print('Mot de passe oublié?'),
              child: Text('Mot de passe oublié?'),
            ),
          ),
          const CustomButton(labelButton: Text('Login'),),
          Row(
            children: const [
              Expanded(child: Divider()),
              Text("Or"),
              Expanded(child: Divider()),
            ],
          ),
          CustomButton(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
              labelButton: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const  [
                  Icon(Icons.facebook),
                  SizedBox(width: 20,),
                  Text(
                    'Login with google',
                    style: TextStyle(color:Colors.blueGrey),
                  )
                ],
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text(
                'New to logistics?'
              ),
              TextButton(
                // TODO : Replace redirection in a register screen
                onPressed: () => print('Register'),
                child: const Text('Register'),
              )
            ],
          )
        ],
      ),
    );
  }
}