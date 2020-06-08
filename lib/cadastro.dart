import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
                top: 80.0, bottom: 20.0, left: 10.0, right: 10.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildTextField2("Nome"),
                  buildTextField2("Telefone"),
                  buildTextField2("CEP"),
                  buildTextField2("Endereço (Rua e Número)"),
                  buildTextField2("Bairro"),
                  buildTextField2("Complemento"),
                  buildTextField2("Usuário"),
                  buildButtonCreate("CADASTRAR"),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ContaEntrada()));
                        },
                        child: Text(
                          "JÁ POSSUI UMA CONTA?",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                        color: Color(0XFF2196F3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Color(0XFF2196F3),
        ),
      ],
    );
  }
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack();
  }
}

Widget buildButtonCreate(String label) {
  return Padding(
    padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
    child: Container(
      height: 50.0,
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    ),
  );
}

Widget buildTextField2(String label) {
  return Container(
    padding: EdgeInsets.only(bottom: 15.0),
    child: TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(),
      ),
      style: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
    ),
  );
}
