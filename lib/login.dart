import 'package:flutter/material.dart';
import 'CalendarPage.dart';

String email = "";
String senha = "";

class LoginPage extends StatefulWidget {
    @override
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
        return Material(
            child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Padding(padding: EdgeInsets.all(22.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextField(
                            onChanged: (text) {
                                email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: 
                                InputDecoration(border:OutlineInputBorder(),
                                 labelText: 'Email'
                                 ),
                        ),
                        SizedBox(
                            height: 10,
                        ),
                        TextField(
                            onChanged: (text) {
                                senha = text;
                            },
                            obscureText: true,
                            decoration: 
                                InputDecoration(border:OutlineInputBorder(),
                                 labelText: 'Senha'
                                 ),
                        ),
                        SizedBox(
                            height: 10,
                        ),
                        ElevatedButton(
                            child: Text('Logar'),
                            onPressed: () {
                                if(email == 'mateus@gmail.com' && senha == '123') {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => CalendarPage())
                                    );
                                } else {
                                    showDialog(
                                    context: context,
                                    builder: (context) {
                                    return AlertDialog(
                                        title: Text(' Login incorreto'),
                                        content: Text('Por favor tente novamente com o login e senha corretos'),
                                        actions: <Widget>[
                                        TextButton(
                                            onPressed: () {
                                                Navigator.pop(context); //close Dialog
                                            },
                                            child: Text('Fechar'),
                                        ),
                                        ],
                                    );
                                });
                                                                }
                               
                            }
                        ),
                    ]),
                ))
        );
    }

}