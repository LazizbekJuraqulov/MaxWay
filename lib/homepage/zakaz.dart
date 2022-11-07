import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ZakazPage extends StatefulWidget {
  const ZakazPage({Key? key}) : super(key: key);

  @override
  State<ZakazPage> createState() => _ZakazPageState();
}

class _ZakazPageState extends State<ZakazPage> {
  bool isTrue = true;
  int next = 1;
  int sum = 35000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 213, 252),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Оформить заказ",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.12,
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/rasmlar/1.jpg"))),
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "MaxWay Лаваш",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        isTrue = !isTrue;
                        setState(() {});
                      },
                      child: con2func(),
                    ),
                    const Text(
                      "Сумма заказа",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$sum",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: Text(
                      "35 000 ",
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.purple),
            child: Text(
              "Оформить заказ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  con2func() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minimumSize: Size(20, 30),
            ),
            onPressed: () {
              next--;
              if (next < 1) {
                isTrue = !isTrue;

                next = 1;
                setState(() {});
              }
              setState(() {});
            },
            child: const Icon(
              Icons.remove,
              color: Colors.black,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            color: Colors.white,
            child: Text(
              "$next",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minimumSize: const Size(20, 30),
            ),
            onPressed: () {
              next++;
              sum += 35000;

              setState(() {});
            },
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          )
        ],
      )),
    );
  }
}
