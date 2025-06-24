import 'package:flutter/material.dart';

class bule extends StatefulWidget {
  const bule({super.key});

  @override
  State<bule> createState() => _buleState();
}

class _buleState extends State<bule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 400,
            width: 500,
            color: Colors.blue,
            child: Image(image: AssetImage("assts/ryp.png"),
            )
          ),
          const SizedBox(height:35),
          Container(
            child: Text("Learning is Everything",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container
                (height:100,
                  width: 300,
                  child: Text("Learning with pleasure with Dear prodrammer wherever ")),
            ),
          ),
         Container(
           height: 45,
           width: 250,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(15),
               bottomLeft: Radius.circular(15),
               topRight: Radius.circular(15),
               bottomRight: Radius.circular(15),

             ),
           ),child: Center(child: Text('Get Start',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),


         )

        ],
      ),
      
    );
  }
}
