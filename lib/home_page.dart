import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Column(
              children: [
                TextField(
                  controller: _email,
                  autocorrect: true,
                  decoration:
                      const InputDecoration(hintText: 'Enter email here'),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  controller: _password,
                  autocorrect: false,
                  obscureText: true,
                  decoration:
                      const InputDecoration(hintText: 'Enter password here'),
                ),
                const TextButton(
                  onPressed: null,
                  child: Text('Registro'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
