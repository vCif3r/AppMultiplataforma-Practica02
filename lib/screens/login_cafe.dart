import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   
  const LoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Café',style: TextStyle(color: Colors.brown, fontSize: 70, fontWeight: FontWeight.bold)),
                Text('Nuestro mejor café del mundo',style: TextStyle(fontSize: 15, color: AppTheme.plomo))
              ],
            ),
            Image.asset('assets/coffee.gif'),
            Column(
              children: [
                ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: const EdgeInsets.only(bottom: 20, top: 20, left: 100, right: 100),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Iniciar Sesión', style: TextStyle(color:Colors.white))),
                const SizedBox(height: 10,),
                ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  side: const BorderSide(color: Colors.brown),
                  padding: const EdgeInsets.only(bottom: 20, top: 20, left: 100, right: 100),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Registrarte',style: TextStyle(color: Colors.brown)))
              ],
            )
          ],    
          
        ),
      )
    );
  }
}