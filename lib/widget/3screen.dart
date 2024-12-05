import 'package:flutter/material.dart';

class Thredscreeen extends StatelessWidget {
  const Thredscreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Expanded(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 120),
                     child: Image.asset('assets/Group1.png'),
                   ), 
                    Image.asset('assets/Group.png'),
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset('assets/Group2.png'),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text('Fast and responsibily ',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            Text('delivery by our courir',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('Lorem ipsum dolor sit amet, consectetur '),
            ),
            Text('adipiscing elit, sed do eiusmod tempor'),

            
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: ElevatedButton(
                  
                  
                  style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(350, 60)), 
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 18, 13, 2))
                )
                  ,
                  onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Thredscreeen();}));
                      
                   
                  }, child:Text('Create an account',style: TextStyle(color: const Color.fromARGB(255, 252, 250, 250),fontSize: 20),)),
            ),

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                  
                  
                  style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(350, 60)), 
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 249, 249, 248))
                                )
                  ,
                  onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Thredscreeen();}));
                      
                   
                  }, child:Text('Create an account',style: TextStyle(color: const Color.fromARGB(242, 2, 13, 54),fontSize: 20),)),
                )

          ],
        ),
      ),
    ),
    );
  }
}