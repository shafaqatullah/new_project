import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card',
      debugShowCheckedModeBanner: false,
      home: MyCard(),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.pinkAccent,
      appBar: AppBar(

        title: Text("Shafaqatullah zaheer"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade400,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
           Center(
             child: Column(
               children: [
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: CircleAvatar(
                   backgroundImage: AssetImage('lib/asset/zaheer.jpg'),
                     radius: 50,
                   ),
                 ),
                 SizedBox(height: 10,),
                 Text('Shafaqatullah zaheer',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 20,)),


                 Text('Mobile App Developer',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 20),)
               ],
             ),
           ),
            SizedBox(height: 30,),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.phone),
                      Text('0782838831',style: TextStyle(color: Colors.black),),

                    ],
                  ),
                 ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.email_sharp),
                      Text('shz@gmail.com',style: TextStyle(color: Colors.black),),

                    ],
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
