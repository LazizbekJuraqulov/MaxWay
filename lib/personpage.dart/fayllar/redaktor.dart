import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RedaktorPage extends StatefulWidget {
  const RedaktorPage({Key? key}) : super(key: key);

  @override
  State<RedaktorPage> createState() => _RedaktorPageState();
}

class _RedaktorPageState extends State<RedaktorPage> {
   late TextEditingController _controller;
  late GlobalKey<FormState> _formKey;
  @override
  void initState() {
    _controller = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 213, 252),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Редакторовать профиль",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textFunc("Имя"),
               const SizedBox(height: 5,),
            formFunc("Ввидети имя"),
            const SizedBox(height: 15,),
            textFunc("Фамилия"),
            const SizedBox(height: 5,),
            formFunc("Ввидети Фамилия"),
            const SizedBox(height: 15,),
            textFunc("Телфон номер"),
            const SizedBox(height: 5,),
            formFunc("Ввидети номер"),
            const SizedBox(height: 15,),
            textFunc("Ваш дата рождения"),
            formFunc("дата рождения"),
            SizedBox(height: 240,),
            InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.96,
                height: MediaQuery.of(context).size.height*0.06,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 78, 19, 88)),
                child: Text("Подтвердить",style: TextStyle(fontSize: 20,color:Colors.white),),
                ),
            ),
      
      
      
      
          ],
        ) ,),
      ),
    );
    
  }

  Widget formFunc( String suz) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: _controller,
        validator: (String? text) {
          if (text!.length < 1) {
            return "Ошибка ";
          }
        },
        onChanged: (value) {},
       
        style: const TextStyle(fontSize: 16, color: Colors.black),
        decoration:  InputDecoration(
         hintText: suz,
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.purple, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.purple, width: 2)),
        ),
      ),
    );
  }

  Widget textFunc(String text) {
    return Text((text),
            style: const TextStyle(fontSize: 16, color: Colors.purple));
  }
}