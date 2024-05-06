// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calcular_dias/login.page.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 60, left: 40, right: 40),
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                width: 128,
                height: 128,
                child: Text("Cadastre-se"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Digite seu Nome",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Digite seu E-mail",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Digite sua Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [Colors.greenAccent, Colors.green],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Cadastre-se",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {
                      if (true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
