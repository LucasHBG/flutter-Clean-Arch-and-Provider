import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../res/app_context_extension.dart';
import '/view_models/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: size.width * 0.65,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _email,
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: context.resources.strings.emailTextLoginScreen,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: _password,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: context.resources.strings.passwordTextLoginScreen,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text(
                        context.resources.strings.forgotPasswordTextLoginScreen,
                        style: const TextStyle(color: Colors.white60)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Add auth class
                      context.read<LoginState>().loggedIn = true;
                    },
                    child: Text(
                        context.resources.strings.enterButtonTextLoginScreen),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
