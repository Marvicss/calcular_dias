// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class dateDiference extends StatelessWidget {
  String _dataInicial = '';
  String _dataFinal = '';

  String calculaDiferenca(String dataInicial, String dataFinal) {
    DateTime dt1 = DateTime.parse(dataInicial);
    DateTime dt2 = DateTime.parse(dataFinal);

    Duration diff = dt1.difference(dt2);
    print(diff.inDays);
    return "A diferença é de ${diff.inDays} dias";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calcula Diferença"),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 150, left: 40, right: 40),
          child: ListView(
            children: [
              InputDatePickerFormField(
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                fieldLabelText: "Data Inicial",
                fieldHintText: "DD/MM/AAAA",
                keyboardType: TextInputType.datetime,
                onDateSubmitted: (DateTime date) {
                  _dataInicial = date.toString();
                },
              ),
              SizedBox(
                height: 20,
              ),
              InputDatePickerFormField(
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                fieldLabelText: "Data Final",
                fieldHintText: "DD/MM/AAAA",
                keyboardType: TextInputType.datetime,
                onDateSubmitted: (DateTime date) {
                  _dataFinal = date.toString();
                },
              ),
              SizedBox(
                height: 20,
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
                          "Calcular",
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
                      String result =
                          calculaDiferenca(_dataInicial, _dataFinal);
                      Container(
                        child: ListView(
                          children: [Text(result)],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
