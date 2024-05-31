
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(right: 8, left: 8),
        children: const[
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(),
          SizedBox(height: 10),
          CustomCardType3(
            imageURL: 'https://acortar.link/IdIChC',
            descripcion: 'Gohan Reloaded',
            )
        ],
      ),    
    );
  }
}

