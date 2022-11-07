import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:partfoliya_1/korzinka.dart/login_1.dart';

class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);
   static TextEditingController? controller=TextEditingController();
 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late TextEditingController controller;
  late GlobalKey<FormState> _formKey;
  @override
  void initState() {
    controller = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 213, 252),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Телефон Номер",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: textfildFunc(context),
    );
  }
 textfildFunc(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Телфон номер",
              style: TextStyle(fontSize: 15, color: Colors.purple)),
          Form(
            key: _formKey,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextFormField(
                controller: controller,
                validator: (String? text) {
                  if (text!.length < 1) {
                    return "Ошибка ";
                  }
                },
                onChanged: (value) {},
                keyboardType: TextInputType.phone,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: const InputDecoration(
                  prefixText: "+998 ",
                  prefixStyle: TextStyle(fontSize: 18, color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.purple, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.purple, width: 2)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              LoginPage.controller=controller;
              if (_formKey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login_1Page();
                }));
              }
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
    );
  }
}
