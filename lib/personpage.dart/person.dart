import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:partfoliya_1/korzinka.dart/login_1.dart';
import 'package:partfoliya_1/personpage.dart/fayllar/filialpage.dart';
import 'package:partfoliya_1/personpage.dart/fayllar/redaktor.dart';
import 'package:partfoliya_1/personpage.dart/fayllar/servicpage.dart';
import 'package:partfoliya_1/personpage.dart/fayllar/settingpage.dart';

import '../korzinka.dart/login.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  List liste=["Филиалы",  "Настройки", "О сервисе",];
  List lista=const[Icon(Icons.location_on,color: Color.fromARGB(255, 97, 23, 110),),Icon(Icons.settings,color: Color.fromARGB(255, 97, 23, 110),),Icon(Icons.announcement_outlined,color: Color.fromARGB(255, 97, 23, 110),),]; 
  List pagees=[FilialPage(),SettingPage(),ServicPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffDFDFDF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: Container(
          height: 100,
          alignment: Alignment.bottomLeft,
          child:  ListTile(
            title:  Text(
              Login_1Page.controller!.text,
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
            subtitle: Text(LoginPage.controller!.text),
            trailing:IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return RedaktorPage();

              }));

            }, icon:Icon(Icons.edit_calendar_rounded) ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return  InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return pagees[index];
                  }));

                },

                child: Card(
                  margin: EdgeInsets.all(10),
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ListTile(
                    //contentPadding: EdgeInsets.only(right: 10),
                    leading:ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white60,minimumSize: Size(25, 30),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      onPressed: (){},child:lista[index],),
                    title: Text("${liste[index]}",style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
