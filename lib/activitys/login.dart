import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(top: 32),

                child: Column(
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.only(top: 40),
                    ),

                    Container(  // Campo de Usuario
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.blueGrey,
                          ),
                          hintText: "Usuário",

                        ),
                      ),
                    ),

                    Container(  // Campo de Senha
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 50,
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.blueGrey,
                          ),
                          hintText: "Senha",

                        ),
                      ),
                    ),


                    Container(   // Botao entrar
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 50,
                      margin: EdgeInsets.only(top: 60),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF2E4D5A),
                                Color(0xFF7B98A5)
                              ]
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          )
                      ),
                      child: Center(
                        child: Text("Entrar".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],


          ),
        ),
      )
    );
  }
}
