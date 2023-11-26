import 'package:flutter/material.dart';
import 'package:shop/utils/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  bool _verSenha = false;
  String email = '';
  String password = '';

  Widget buildIconButton() {
    return IconButton(
      icon: Icon(
        _verSenha ? Icons.visibility_outlined : Icons.visibility_off_outlined,
      ),
      onPressed: () {
        setState(() {
          _verSenha = !_verSenha;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // const Center(
                //   child: Image(
                //     image: AssetImage("assets/logo.jpg"),
                //   ),
                // ),
                TextFormField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                    hintText: 'nome@email.com',
                  ),
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return 'Digite seu e-mail';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  onChanged: (text) {
                    password = text;
                  },
                  controller: _senhaController,
                  obscureText: !_verSenha,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Senha',
                    hintText: 'insira sua senha aqui',
                    suffixIcon: buildIconButton(),
                  ),
                  validator: (senha) {
                    if (senha == null || senha.isEmpty) {
                      return 'Digite sua senha';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (email == 'luigi@email.com' && password == '123') {
                        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
                        // Aqui você pode adicionar a lógica para navegar para a próxima tela ou realizar outras ações após o login bem-sucedido
                      }
                    }
                  },
                  child: const Text('Entrar'),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
                    },
                    child: const Text('Continuar sem login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
