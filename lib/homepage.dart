import 'package:assignment3/database.dart';
import 'package:assignment3/status.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>Status()),
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 20,)),
        ],
      ),

      body: Column(
        children: [
          Container(
          
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.purple,
                    child: CircleAvatar(
                      radius: 6,
                    ),
                  ),
                  Text(" Ask Meta Ai Or Search",style: TextStyle(fontSize: 13),),
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(radius: 20,
              foregroundImage: AssetImage(Database.myList[index]["image"]),),
              title: Text(Database.myList[index]["name"]),
              subtitle: Text(Database.myList[index]["text"]),
              trailing: Text(Database.myList[index]["text1"]),
              
            );
                    }
                  ),
                  ),
           ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.green,
      child: Container(
        height: 25,
        width: 25,
        color: Colors.white,
        child: Icon(Icons.add),
      ),),
       
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