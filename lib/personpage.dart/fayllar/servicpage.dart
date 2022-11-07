import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:partfoliya_1/personpage.dart/fayllar/servis_1page.dart';

class ServicPage extends StatefulWidget {
  const ServicPage({Key? key}) : super(key: key);

  @override
  State<ServicPage> createState() => _ServicPageState();
}

class _ServicPageState extends State<ServicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 246, 213, 252),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "О сервеси",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height*0.27,
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ) ,
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return Servis_Pages();
                }));

              },
              child: ListTile(title: Text("Политика Конденциалности"),trailing: Icon(Icons.arrow_forward_ios),),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text("Лицензионный соглашения"),trailing: Icon(Icons.arrow_forward_ios),),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text("Работа в MaxWay"),trailing: Icon(Icons.arrow_forward_ios),),
            ),
          

          ],
        ),
      ),
     
    );
    
  }
}