import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilialsPage extends StatefulWidget {
  const FilialsPage({Key? key}) : super(key: key);

  @override
  State<FilialsPage> createState() => _FilialsPageState();
}

class _FilialsPageState extends State<FilialsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 213, 252),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Филлиал",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.96,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image:const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/rasmlar/8.jpg"))),
                    ),
                   const Padding(
                     padding: EdgeInsets.all(10),
                     child: Text(
                       "Проспект Навои (Хадра)",
                       style: TextStyle(
                           fontSize: 25,
                           color: Colors.black,
                           fontWeight: FontWeight.bold),
                     ),
                   ),
                   Card(child: ListTile(leading: Icon(Icons.telegram,color: Colors.purple,),title: Text("г. Тошкент, Юнусабадский район",style: TextStyle(fontSize: 18,color: Colors.black),),),),
                   Card(child: ListTile(leading: Icon(Icons.location_on_rounded,color: Colors.purple,),title: Text("Мегапларет Макро",style: TextStyle(fontSize: 18,color: Colors.black),),),),
                   Card(child: ListTile(leading: Icon(Icons.call,color: Colors.purple,),title: Text("+998 71 207-03-07",style: TextStyle(fontSize: 18,color: Colors.black),),),),
                   Card(child: ListTile(leading: Icon(Icons.history_rounded,color: Colors.purple,),title: Text("с 09-00 до 23-00",style: TextStyle(fontSize: 18,color: Colors.black),),),),


                 
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    
  }
}