
import 'package:arcuscv/activitys/ActPrincipal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String _usuario = 'arcus';
  String _senha = '123';

  final _usuarioController = TextEditingController();
  final _senhaController = TextEditingController();

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF2E4D5A),
                          Color(0xFF7B98A5)
                        ],
                      ),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.person,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3
                        + MediaQuery.of(context).size.height / 3,
                margin: EdgeInsets.only(top: 32),

                child: ListView(
                  padding: EdgeInsets.all(16.0),
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),

                    Container(  // Campo de Usuario
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 70,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(25)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: TextFormField(
                        controller: _usuarioController,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.blueGrey,
                          ),
                          hintText: "Usuário",

                        ),
                        validator: (text){
                          if(text.isEmpty  || text != _usuario  )
                            return "Usuário inválido";
                          },
                      ),
                    ),

                    Container(  // Campo de Senha
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 70,
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(25)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: TextFormField(
                        controller: _senhaController,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.blueGrey,
                          ),
                          hintText: "Senha",
                        ),
                        obscureText: true,
                        validator: (text){
                          if(text.isEmpty || text != _senha)
                            return "Senha inválida";
                        },
                      ),
                    ),

                    // espaçamento
                    SizedBox(
                      height: 10.0,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 50,
                      margin: EdgeInsets.only(top: 60),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF2E4D5A),
                                Color(0xFF7B98A5)
                              ]
                          ),
                          borderRadius: BorderRadius.all(  // borda do container arredondado
                              Radius.circular(25)
                          )
                      ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(   // borda do Button arredondado
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Text(
                        "Entrar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){
                        if(_formKey.currentState.validate()){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => ActPrincipal()));
                        }else{
                           mensagemErro();
                        }

                      },
                    ),
                    ),

                  ],
                ),
              )
            ],


          ),
        ),
      )
    );
  }

  void mensagemErro(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text("Não é possível entrar com esse Usuário e Senha!"),
      backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),

      )
    );
  }

}
