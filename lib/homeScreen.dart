import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'busca.dart';
import 'login.dart';
import 'cadastro.dart';

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
      body:Init());      

  }
}

class Init extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Container(child: Image(
          image: AssetImage("asserts/catavento.png"),
          width: 100,
        ),),Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: Botao('Visitante',Buscar)),
                Container(child: Botao('Conta',ContaEntrada)),
                Container(child: Botao('Cadastro',RegistrationScreen))
              ]),
        )],
      ));
  }
}

class Botao extends StatelessWidget {
  final String nome;
  final navegacao;
  Botao(this.nome,this.navegacao); //

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(
          '$nome',
          style: TextStyle(fontSize: 20.0, color: Color(0XFFFFFFFF)),
        ),
        color: Color(0XDD000000),
        splashColor: Color(0X4DFFFFFF),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => navegacao));
        },
      ),
      width: 300,
    );
  }
}
