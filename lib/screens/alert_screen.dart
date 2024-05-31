import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

  void displayDialog(BuildContext context){
    showDialog(
      
      //barrierDismissible: false, //no deja cerrar el dialog
      context: context, 
      builder: (context) =>  AlertDialog(
        title: const Text("Alerta de mensaje"),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Este es el contenido de la alerta"),
            SizedBox(height: 10),
            FlutterLogo(size: 100,)
          ],
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Cancelar",style: TextStyle(fontSize: 20)),)
        ],
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(onPressed: ()=> displayDialog(context), child: const Text("Procesar",style: TextStyle(color: Colors.white ),))
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cloud_sync),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}