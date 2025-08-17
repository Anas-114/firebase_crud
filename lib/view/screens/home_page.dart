import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME'),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Center(
              child: Text(' YOU CAN ADD YOUR STUDENT DATA HERE \n 1. name \n 2.age \n 3. image \n 4.class \n 5. address' ,style: TextStyle(fontSize: 20),),
            )

            ,Center(

              child: ElevatedButton(onPressed:  () {
                
              }, child: Text('fill your data')),
            )
          ],
        ),
      ),
    );
  }
}