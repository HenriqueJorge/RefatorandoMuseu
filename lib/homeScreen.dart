import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'busca.dart';
import 'login.dart';
import 'cadastro.dart';
import 'informacaoPintura.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int escolha = 1;
  String nome ;
  String senha;
  
  void setNome(nomeA){
    nome = nomeA;
  }

  void setSenha(senhaA){
    senha = senhaA;
  }

  void validadorUser(){
    if(nome == 'Admin' && senha == 'Admin'){
      buscando();
    }
  }

  void buscando() {
      setState(() {
        escolha = 2;
        new Future.delayed(new Duration(seconds: 3), pintura);
      });
  }

  void inicio(){
    setState(() {
      escolha = 1;
    });
  }

  void entrar(){
    setState(() {
      escolha = 4;
    });
  }

  void cadastrar(){
    setState(() {
      escolha = 5;
    });
  }

  Future pintura() async{
        setState((){
          escolha = 3;
        });
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF2196F3),
      body:Container(decoration: new BoxDecoration(image: new DecorationImage(image: AssetImage('asserts/fundoOf.jpg'), fit: BoxFit.cover)),child:Center(child: Container(child : Init(),height: 400,))));      

  }
}

class Init extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Container(child: Icon(
                      Icons.toys,
                      size: 150.0,
                    ),),Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: Botao1('Visitante')),
                Container(child: Botao2('Conta')),
                Container(child: Botao3('Cadastro'))
              ]),
        )],
      ));
  }
}

class Botao1 extends StatelessWidget {
  final String nome;
  Botao1(this.nome); //

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 40.0, right: 40.0),
                    child: Container(
                      height: 50.0,
                      width: 300.0,
                      child: RaisedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => InformaPintura()));},
                        child: Text(
                           '$nome',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  );
  }
} 

class Botao2 extends StatelessWidget {
  final String nome;
  Botao2(this.nome); //

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 50.0,
                      width: 300.0,
                      child: RaisedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ContaEntrada()));},
                        child: Text(
                           '$nome',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  );
  }
} 

class Botao3 extends StatelessWidget {
  final String nome;
  Botao3(this.nome); //

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 50.0,
                      width: 300.0,
                      child: RaisedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));},
                        child: Text(
                           '$nome',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  );
  }
}

