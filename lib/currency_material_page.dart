
import 'package:flutter/material.dart';

class Currency extends StatefulWidget{
  const Currency({super.key});
  @override
  State<Currency> createState()=> _currecy_convert();  
}



class _currecy_convert extends State<Currency>{
  final border =const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                );
 
 TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 214, 149),
      appBar: AppBar(
        title:const Text("Currency Converter"),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 64, 121, 255),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text('INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', 
           style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
           const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.white,fontSize: 25),
                decoration: InputDecoration(
                  hintText: "Enter Dollor Here",
                  hintStyle:const TextStyle(fontSize: 25,color: Colors.white),
                  prefixIcon:const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.yellow,
                  enabledBorder: border,
                  focusedBorder: border,    
                  fillColor: Colors.black,
                  filled: true,
                  
                ),
            
                keyboardType: TextInputType.number,
    
                
              ),
          
            ),
            
            
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: ElevatedButton(onPressed: (){
                
                setState(() {
                  result = double.parse(textEditingController.text)*82.64;
                });
                },
                style: TextButton.styleFrom(
                  backgroundColor:Colors.black,
                   minimumSize: Size(double.infinity, 40),  
                ),
                 child:  Text("CONVERT")),
           ),
            

          ],
        ),
      ),
    );
  }
}