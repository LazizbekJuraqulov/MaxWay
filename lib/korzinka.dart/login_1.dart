import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:partfoliya_1/bottomNav.dart';
import 'package:partfoliya_1/personpage.dart/person.dart';

class Login_1Page extends StatefulWidget {
   Login_1Page({Key? key}) : super(key: key);
static TextEditingController? controller = TextEditingController();

  @override
  State<Login_1Page> createState() => _Login_1PageState();
}

class _Login_1PageState extends State<Login_1Page> {
  TextEditingController? controller;
  @override
  void initState() {
    controller=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Имя Фамилия",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Имя Фамилия",
                      style: TextStyle(fontSize: 15, color: Colors.purple))),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  controller:controller ,
                  onChanged: (value) {},
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: "Имя Фамилия",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.purple, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.purple, width: 2)),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                  width: 300,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                      "Создавая учетную запись, вы соглашаетесь с условиями использования Maxway.")),
              InkWell(
                onTap: () {
                Login_1Page.controller=controller;
              
                  BottomNav.nom=true;
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                    return BottomNav();
                  }), (route) => false);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 77, 11, 88)),
                  child: const Text(
                    "Продолжить",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
