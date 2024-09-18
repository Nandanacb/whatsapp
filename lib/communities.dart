import 'package:assignment3/calls.dart';
import 'package:flutter/material.dart';

class Communities extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>Calls()),
      );
    });
    return Scaffold(
     appBar: AppBar(

      title: Text("Communities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 20,)),
        ],


     ),

     body:
      Column(
        
       children: [
        
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 168, 234, 171)),
          ),
        ),



         Row(
     
           mainAxisAlignment: MainAxisAlignment.center,  
           crossAxisAlignment: CrossAxisAlignment.center,        
           children: [Center(child: Text("Stay connected with a community",style: TextStyle(fontSize: 20),)),],
         ),
         
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [Center(child: Text(
          '''Communities bring members together in topic-based groups,
               and make it easy to get admin announcements.
                 any community you're added to will appear here.''',
         overflow: TextOverflow.ellipsis,
         maxLines: 2,
         style: TextStyle(fontSize: 12),)),
         ],
         ),
        
         Padding(
           padding: const EdgeInsets.all(10),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Center(child: Text("See example communities >",style: TextStyle(fontSize: 15,color: Colors.green),)),
            ],
           ),
         ),

       Padding(
         padding: const EdgeInsets.all(15),
         child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.green),
          child: Center(child: Text("Start your community",style: TextStyle(color: Colors.white),)),
         ),
       ),
    ],
     ),

       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 151, 148, 148),
        
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,

        items: 
        [
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update),label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.group_add_rounded),label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
        ]
        ),

);
  }
}