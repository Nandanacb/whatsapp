//import 'package:assignment3/database.dart';
import 'package:assignment3/communities.dart';
import 'package:assignment3/database.dart';
import'package:flutter/material.dart';

class Status extends StatelessWidget{

  @override
  
    Widget build(BuildContext context){
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>Communities()),
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Updates",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 20,)),
        ],
      ),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
         Row(
           children: [
            
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8),
                   child: CircleAvatar(
                    radius: 35,
                    foregroundImage: AssetImage("assets/images/img6.jpeg"),
                     ),
                 ),
               ],
             ),
             
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My status",style: TextStyle(fontSize: 18),),
                  Text("Tap to add status updates",style: TextStyle(fontSize: 13),),
              
                ],
              ),
            ),
             
           ],
         ),
         SizedBox(height: 10),
         Padding(
           padding: const EdgeInsets.all(10),
           child: Text("Recent updates",style: TextStyle(fontSize: 12),),
         ),

          Row(
           children: [
            
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8),
                   child: CircleAvatar(radius: 30,backgroundColor: Colors.green,
                     child: CircleAvatar(
                      radius: 25,
                      
                      foregroundImage: AssetImage("assets/images/img7.jpeg"),
                       child: CircleAvatar(
                        
                       ),
                       ),
                   ),
                 ),
               ],
             ),
             
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Anupama",style: TextStyle(fontSize: 18),),
                  Text("2.40",style: TextStyle(fontSize: 13),),
              
                ],
              ),
            ),
             
           ],
         ),
         

        Row(
           children: [
            
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8),
                   child: CircleAvatar(radius: 30,backgroundColor: Colors.green,
                     child: CircleAvatar(
                      radius: 25,
                      
                      foregroundImage: AssetImage("assets/images/img8.jpeg"),
                       child: CircleAvatar(
                        
                       ),
                       ),
                   ),
                 ),
               ],
             ),
             
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Athulya",style: TextStyle(fontSize: 18),),
                  Text("3.40",style: TextStyle(fontSize: 13),),
              
                ],
              ),
            ),
             
           ],
         ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Viewed Updates",style: TextStyle(fontSize: 12),),
        ),
        
        
       Expanded(
         child: ListView.builder(
          itemCount:6,
          itemBuilder:(context,index){
          
          return ListTile(
                leading:  CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(radius: 20,
                  foregroundImage: AssetImage(Database.mystatusList[index]["image"]),),
                ),
                title: Text(Database.mystatusList[index]["name"]),
                subtitle: Text(Database.mystatusList[index]["text"]),
         
         
         
         
         );
          }),
       ),
       
       
      ],
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.green,
      child: Container(
        height: 25,
        width: 25,
        child: Icon(Icons.camera_alt),
      ),),

    
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 151, 148, 148),
        
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,

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