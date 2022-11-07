import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Servis_Pages extends StatefulWidget {
  const Servis_Pages({Key? key}) : super(key: key);

  @override
  State<Servis_Pages> createState() => _Servis_PagesState();
}

class _Servis_PagesState extends State<Servis_Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 246, 213, 252),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Политика Конденциалности",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height*0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
        ),

        child: Column(
          children: [
            Text("Мы делаем клиентов счастливыми",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Компания была основана в феврале 2005 года в Ташкенте  На сегодняшний момент у компании 14 филиалов в ТашкентеНаши приоритеты – свежесть и качество ингредиентов, разнообразие начинок, доступные цены и внимание к просьбам гостей.",style: TextStyle(fontSize: 15,)),
          ],
        ),
      ),
    );
    
  }
}