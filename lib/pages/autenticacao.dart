import 'package:flutter/material.dart';
import 'package:teste_flutter/_core/myColors.dart';
import 'package:teste_flutter/components/auth_decoration.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool login = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyColors.blueTopGradient,
                  MyColors.blueBottomGradient,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Image.asset(
                      //   'assets/gymApp.png',
                      //   height: 300,
                      // ),
                      Text(
                        "GymApp",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        decoration: getAutenticationInputDecoration("E-mail"),
                        validator: (String? value) {
                          if (value == null) {
                            return "E-mail não pode esta vazio";
                          }
                          if (value.length < 5) {
                            return "E-mail muito curto";
                          }
                          if (!value.contains("@")) {
                            return "E-mail inválido";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 8),

                      TextFormField(
                          decoration: getAutenticationInputDecoration("Senha"),
                          validator: (String? value) {
                            if (value == null) {
                              return "Senha não pode esta vazio";
                            }
                            if (value.length < 5) {
                              return "A senha deve conter no minimo 5 caracteres";
                            }

                            return null;
                          },
                          obscureText: true),
                      SizedBox(height: 8),
                      Visibility(
                          visible: !login,
                          child: Column(
                            children: [
                              TextFormField(
                                  decoration: getAutenticationInputDecoration(
                                      "Confirme Senha"),
                                  validator: (String? value) {
                                    if (value == null) {
                                      return "Senha não pode esta vazio";
                                    }
                                    if (value.length < 5) {
                                      return "A senha deve conter no minimo 5 caracteres";
                                    }

                                    return null;
                                  },
                                  obscureText: true),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: getAutenticationInputDecoration(
                                    "Nome Completo"),
                                validator: (String? value) {
                                  if (value == null) {
                                    return "Nome não pode esta vazio";
                                  }
                                  if (value.length < 5) {
                                    return "Não é permitido abreviações ou apélidos";
                                  }

                                  return null;
                                },
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          principalButtonClicked();
                        },
                        child: Text((login) ? "Entrar" : "Cadastrar"),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            login = !login;
                          });
                        },
                        child: Text((login)
                            ? "Primeiro acesso ? Cadastre-se"
                            : "Ja tenho uma conta!"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  principalButtonClicked() {
    if (_formKey.currentState!.validate()) {
      print("Formulario enviado com sucesso");
    } else {
      ("Formulario esta incompleto");
    }
  }
}
