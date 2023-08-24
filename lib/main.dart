
import 'package:currency2/currency_material_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const currencyconverter());
}

class currencyconverter extends StatelessWidget{
  const currencyconverter({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Currency(),
    );
  }
}