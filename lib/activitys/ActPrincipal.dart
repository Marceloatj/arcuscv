import 'package:arcuscv/activitys/Login.dart';
import 'package:flutter/material.dart';
import 'package:arcuscv/icons/my_flutter_app_icons.dart';

class ActPrincipal extends StatefulWidget {
  @override
  _ActPrincipalState createState() => _ActPrincipalState();
}

class _ActPrincipalState extends State<ActPrincipal> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ArcusCV",
          style: TextStyle(
          color: Colors.white,
            fontSize: 18.0
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(MyFlutterApp.logout,
            color: Colors.white,),
            onPressed: (){
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Login()));
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(      // container dados usuario
              margin: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  color: Color.fromARGB(50, 128, 128, 128),
                  borderRadius: BorderRadius.circular(7.0)
                  ),

              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(6.0),
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 96, 125, 139),
                        borderRadius: BorderRadius.circular(7.0)
                    ),
                  )
                ],
              ),

              ),

            Container(    // container dos botoes
              width: MediaQuery.of(context).size.width  ,
              height: MediaQuery.of(context).size.height / 4,

              child: Row(
                children: <Widget>[

                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height,

                      //alignment: Alignment.center,

                    child: Container(

                        margin: EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(50, 128, 128, 128),
                            borderRadius: BorderRadius.circular(9.0)
                        ),

                        child: FlatButton(
                          shape: RoundedRectangleBorder(   // borda do Button arredondado
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          onPressed: (){},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.add,
                              size: 50,
                              ),
                              SizedBox(height: 15,),
                              Text("Nova Viagem"),
                            ],
                          ),

                        )
                    )

                  ),


                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,

                      //alignment: Alignment.center,

                      child: Container(

                          margin: EdgeInsets.all(25.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(50, 128, 128, 128),
                              borderRadius: BorderRadius.circular(9.0)
                          ),

                          child: FlatButton(
                            shape: RoundedRectangleBorder(   // borda do Button arredondado
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            onPressed: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.history,
                                size: 50,),
                                SizedBox(height: 15,),
                                Text("Histórico Viagens")
                              ],
                            ),

                          )
                      )

                  )


                ],
              ),

            ),


            Container(    // container dos botoes
              width: MediaQuery.of(context).size.width  ,
              height: MediaQuery.of(context).size.height / 4,

              child: Row(
                children: <Widget>[

                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,

                      //alignment: Alignment.center,

                      child: Container(

                          margin: EdgeInsets.all(25.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(50, 128, 128, 128),
                              borderRadius: BorderRadius.circular(9.0)
                          ),

                          child: FlatButton(
                            shape: RoundedRectangleBorder(   // borda do Button arredondado
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            onPressed: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.drive_eta,
                                size: 50,),
                                SizedBox(height: 15,),
                                Text("Cadastro Veículo")
                              ],
                            ),

                          )
                      )

                  ),


                ],
              ),

            )


          ],
        ),


      ),
    );
  }
}
