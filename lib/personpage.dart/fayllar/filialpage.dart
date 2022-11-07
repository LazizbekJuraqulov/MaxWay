import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:partfoliya_1/personpage.dart/fayllar/filial/filialspage.dart';

class FilialPage extends StatefulWidget {
  const FilialPage({Key? key}) : super(key: key);

  @override
  State<FilialPage> createState() => _FilialPageState();
}

class _FilialPageState extends State<FilialPage> {
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FilialsPage();

                }));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.96,
                height: MediaQuery.of(context).size.height * 0.47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image:const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/rasmlar/8.jpg"))),
                    ),
                   const Padding(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Text(
                       "MaxWay | Xadra",
                       style: TextStyle(
                           fontSize: 25,
                           color: Colors.black,
                           fontWeight: FontWeight.bold),
                     ),
                   ),
                  const Padding(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child:  Text(
                       "30 Navoiy shox ko'chasi, Toshkent 100129 ",
                       style: TextStyle(color: Colors.black12, fontSize: 15),
                     ),
                   ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(179, 199, 198, 198),
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:const [
                              Icon(
                                Icons.access_time,
                                size: 25,
                                color: Colors.purple,
                              ),
                              Text(
                                "09:00_23:00",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        Container(
                           margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                             color: Color.fromARGB(179, 199, 198, 198),
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            children: const  [
                              Icon(
                                Icons.phone,
                                size: 25,
                                color: Colors.purple,
                              ),
                              Text(
                                "+998 99 859 91 70",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.purple),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
