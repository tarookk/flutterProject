import 'package:desion_project/widget/secondScreen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          
          backgroundColor: Colors.white,
        ),
        body: Column(
        
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Image.asset('assets/image 6.png',
               width: MediaQuery.of(context).size.width,
              
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text('Welcome to Fresh Fruits',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18,bottom: 30),
              child: Text('Grocery appliction',style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 18), ),
            ),
            Text('Lorem ipsum dolor sit amet, consectetur ',style: TextStyle(
             
            ),),
            Text('adipiscing elit, sed do eiusmod tempor'),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(350, 60)), 
                  backgroundColor: MaterialStateProperty.all(const Color(0xffFEC54B))
              )
                ,
                onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Secondscreen();
                    },
                    ),
                    );
                }, child:Text('Next',style: TextStyle(color: Colors.black),)),
            )
          ],
        ),

      ),
    );
  }
}