import 'package:desion_project/widget/3screen.dart';
import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

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
            Text('''We provide best quality'''
 ,style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
            Text('Fruits to your family',style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: 18), ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text('Lorem ipsum dolor sit amet, consectetur  ',style: TextStyle(
               
              ),),
            ),
            Text('adipiscing elit, sed'),




            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: ElevatedButton(
                
                
                style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(350, 60)), 
                  backgroundColor: MaterialStateProperty.all(const Color(0xffFEC54B))
              )
                ,
                onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Thredscreeen();}));
                    
                 
                }, child:Text('Next',style: TextStyle(color: Colors.black),)),
            )
          ],
        ),

      ),
    );
  }
}