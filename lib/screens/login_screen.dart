import 'package:flutter/material.dart';
import 'package:login_widget/login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  /// Ensure the [input] is valid.
  String? _genericValidator(String? input) {
    if (input == null) {
      return 'Invalid';
    } else if (input == '') {
      return 'Cannot be empty';
    } else if (input.length > 256) {
      return 'Too long';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Vintage Books',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          child: LoginWidget(
            form: LoginFormWidget(
              formKey: _formKey,
              loginFields: [
                LoginFieldWidget(
                  controller: _usernameController,
                  hintText: 'Usuário',
                  validator: _genericValidator,
                ),
                LoginFieldWidget(
                  controller: _passwordController,
                  hintText: 'Senha',
                  obscureText: true,
                  validator: _genericValidator,
                ),
              ],
            ),
            loginButtonText: 'Entrar',
            onSubmit: () async {
              Navigator.pushNamed(context, '/home');
              final text = '${_usernameController.text} : '
                  '${_passwordController.text}';
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(text)));
              return null;
            },
          ),
        ),
      ),
    );
  }
}
