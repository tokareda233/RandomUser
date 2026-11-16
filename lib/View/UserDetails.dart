import 'package:flutter/material.dart';

class Userdetails extends StatelessWidget {
  String ImageUrl;
  String Name;
  String Email;
  String Adress;
   Userdetails({super.key,required this.Adress,required this.Email,required this.ImageUrl,required this.Name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("$Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      centerTitle: true,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      backgroundColor: const Color.fromARGB(255, 97, 20, 120),
    ),

    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 3,
          child: Container(
            height: 330,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 237, 206, 243).withValues(alpha: 1),
            ),
            child: Column(
              children: [
                SizedBox(height: 20,),
                CircleAvatar(backgroundImage: NetworkImage("$ImageUrl"),radius: 45,),
                SizedBox(height: 10,),
                Text(Name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                 SizedBox(height: 18,),
                 ListTile(
                  title: Text("Email"),
                  subtitle: Text("$Email"),
                  leading: Icon(Icons.email,color:const Color.fromARGB(255, 97, 20, 120)),
                 ),
                 Divider(indent: 15,endIndent: 15,),
                  ListTile(
                  title: Text("Address"),
                  subtitle: Text("$Adress"),
                  leading: Icon(Icons.location_on,color: const Color.fromARGB(255, 97, 20, 120),),
                 ),
              ],
            ),
          ),
        ),
      ),
    ),

    );
  }
}

