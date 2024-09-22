import 'package:assignment3/database.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calls",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 20,)),

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Favourites",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.favorite,color: Colors.black),
                    ),
                  ],
                ),
              ),
              Text("Add favourite",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              
            ],
          ),
          
           Padding(
             padding: const EdgeInsets.all(10),
             child: Text("Recent",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
           ),
        
        
        Expanded(
         child: ListView.builder(
          itemCount:7,
          itemBuilder:(context,index){
          
          return ListTile(
            
                leading:  CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(radius: 20,
                  foregroundImage: AssetImage(Database.mycallList[index]["image"]),),
                ),
                title: Text(Database.mystatusList[index]["name"]),
                subtitle: Row(
                  children: [
                    Icon(Icons.call_missed_sharp,color: Colors.red,),
                    Text(Database.mycallList[index]["text"]),
                    Spacer(),
                    Icon(Icons.call),
                  ],
                  ),
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
        child: Icon(Icons.call,
      ),),
      ),
    
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