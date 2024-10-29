import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home:HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity ({super.key});

  void MySnackBar(message, BuildContext context){
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),)
     );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("My Apps"),
        backgroundColor: Colors.amber,
      actions:  [
        IconButton(onPressed: (){MySnackBar("i Am comment", context);}, icon: Icon(Icons.comment)),
        IconButton(onPressed: (){MySnackBar("I am Search", context);}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){MySnackBar("I am email", context);}, icon: Icon(Icons.email)),
        IconButton(onPressed: (){MySnackBar("I am Setteing", context);}, icon: Icon(Icons.settings)),
        IconButton(onPressed: (){MySnackBar("I am Account", context);}, icon: Icon(Icons.no_accounts))
      ],




     ),
     floatingActionButton: FloatingActionButton(
         elevation: 10,
         child: Icon(Icons.add),
         backgroundColor: Colors.amber,

         onPressed: (){MySnackBar("I Am  Add Button", context);}),
     bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,
         // backgroundColor: Colors.amber,
       selectedItemColor: Colors.amber,

         items: [
       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
       BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
     ],
     onTap:(int index){
       if(index == 0){
         MySnackBar("I Am Home ", context);
       }else if(index == 1){
         MySnackBar("I Am Comment", context);
       }else if(index == 2){
         MySnackBar("I Am Profile", context);
       }else{
         MySnackBar("Please Try Again", context);
       }
   },
     ),





     body: Text("Hello Bangladesh")
     ,
   );
  }
}
