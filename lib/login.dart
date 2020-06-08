import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cadastro.dart';

class ContaEntrada extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ContaEntrada> {

  final _formKey = GlobalKey<FormState>();

  final controllerNome = TextEditingController();
  final controllerSenha = TextEditingController();

  _HomeState();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "asserts/museu.jpg",
          fit: BoxFit.cover,
          height: 500.0,
        ),
        Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: 30.0, bottom: 70.0, left: 30.0, right: 30.0),
                    child: Icon(
                      Icons.toys,
                      size: 100.0,
                    ),
                  ),
                  buildTextField("Usuário",controllerNome),
                  buildTextField("Senha",controllerSenha),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "ENTRAR",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      child: Text(
                        "Não possui uma conta?",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: <Widget>[
                        ImageIcon(
                          AssetImage("asserts/unifacisa_logo.png"),
                          size: 50.0,
                        ),
                        ImageIcon(
                          AssetImage("asserts/lti_logo.png"),
                          size: 40.0,
                        ),
                      ],
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

Widget buildTextField(String label, TextEditingController texto ){
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
      ),controller: texto,
    ),
  );
}
