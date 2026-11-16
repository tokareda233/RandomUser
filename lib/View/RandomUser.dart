import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomusers_projects/Providers/RandonUsersProvider.dart';
import 'package:randomusers_projects/View/UserDetails.dart';

class Randomuser extends StatelessWidget {
  const Randomuser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 20, 120),
        title: Text("Random User",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
      ),
      body: Consumer<Randonusersprovider>(
        builder: (context, Provider, child) {
          if(Provider.randomUsermodel==null){
            Provider.getRondomUserprovider();
            return Center(child: CircularProgressIndicator(),);
          }else{
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Userdetails(Email:Provider.randomUsermodel!.results[index]["email"] ,Name:"${Provider.randomUsermodel!.results[index]["name"]["first"]} ${Provider.randomUsermodel!.results[index]["name"]["last"]}" ,ImageUrl:Provider.randomUsermodel!.results[index]["picture"]["thumbnail"] ,Adress: "${Provider.randomUsermodel!.results[index]["location"]["street"]["name"]}, ${Provider.randomUsermodel!.results[index]["location"]["country"]} ",),));
                },
                child: Card(
                  color: const Color.fromARGB(255, 237, 206, 243).withValues(alpha: 1),
                  elevation: 3,
                  child: ListTile(
                    title:Text("${Provider.randomUsermodel!.results[index]["name"]["first"]} ${Provider.randomUsermodel!.results[index]["name"]["last"]}",style: TextStyle(fontWeight: FontWeight.bold),) ,
                    subtitle:Text(Provider.randomUsermodel!.results[index]["email"],) ,
                   leading: CircleAvatar(radius: 25,backgroundImage: NetworkImage(Provider.randomUsermodel!.results[index]["picture"]["thumbnail"])),
                  ),
                ),
              ),
              );
          }
        },
       
      ),
      floatingActionButton:Consumer<Randonusersprovider>(builder: (context, Provider, child) {
        return
       Container(
        
        decoration: BoxDecoration(
          
          color: const Color.fromARGB(255, 97, 20, 120),
          borderRadius: BorderRadius.circular(13)
        ),
         child: IconButton(onPressed: (){
            Provider.getRondomUserprovider();
          }, icon: Icon(Icons.replay_outlined,color: Colors.white,)),
       );
      },
        
        ) ,

    );
  }
}
