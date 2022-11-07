import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:partfoliya_1/homepage/aksiya.dart';
import 'package:partfoliya_1/homepage/burgerPage.dart';
import 'package:partfoliya_1/homepage/search.dart';
import 'package:partfoliya_1/homepage/zakaz.dart';
import 'package:partfoliya_1/korzinka.dart/korzinka.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> list5 = List.generate(6, (index) => true);
  List<int> list4 = List.generate(6, (index) => 1);
  late int activBar;
  late int kup;
  int narx = 25000;
  List list = [
    "assets/rasmlar/1.jpg",
    "assets/rasmlar/2.jpg",
    "assets/rasmlar/3.jpg",
    "assets/rasmlar/4.jpg",
    "assets/rasmlar/5.jpg"
  ];
  List list1 = ["Максим бокс", "Донар блюдо", "Хот дог"];
  List list2 = [
    "Макси бокс",
    "Лаваш",
    "Клубный сендвич",
    "Шаурма",
    "Донар Кебаб",
    "Хаги",
    "Бургер",
    "Хотдог",
    "перекус",
    "Гарнир",
    "Двоюродная сестра",
    "Напитки",
    "Десерт"
  ];
  bool clor=true;
   var summa;

  bool isTrue = false;
  List pages = [];
  late List isFalse;
  @override
  void initState() {
    activBar = 0;
    kup = 1;
    narx=2500;

    isFalse = List.generate(list2.length, (index) => true);
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 241),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: appbarFun(context),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: ListView.builder(
                        itemCount: list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.32,
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return AksiyaPage("${list[index]}",
                                      list1[index], list1[index]);
                                }));
                              },
                              child: activFun("${list[index]}"),
                            ),
                          );
                        })),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list2.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              isFalse[index] = !isFalse[index];
                              setState(() {});
                            },
                            child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                padding: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: isFalse[index]
                                      ? Colors.white
                                      : Color.fromARGB(255, 107, 23, 124),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      list2[index],
                                      style: TextStyle(
                                          color: isFalse[index]
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                  ],
                                )),
                          );
                        })),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Бургер",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, mainAxisExtent: 250),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {});

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return BurgerPage();
                                }));
                              },
                              child: Container(
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  width: 180,
                                  height: 250,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      "assets/rasmlar/7.jpg"))),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "MaxWay Бургер",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            isTrue = !isTrue;
                                            list5[index] = !list5[index];

                                            setState(() {});
                                          },
                                          child: list5[index]
                                              ? con1func("25 000")
                                              : con2func(index, list5, list4),
                                        )
                                      ])),
                            );
                          }),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Лаваш",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, mainAxisExtent: 250),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {});

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return BurgerPage();
                                }));
                              },
                              child: Container(
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  width: 180,
                                  height: 250,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                      InkWell(
                                        splashColor:clor ?Colors.grey[300]:Colors.white,
                                        
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                              
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        "assets/rasmlar/9.jpg"))),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "MaxWay Лаваш",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            isTrue = !isTrue;
                                            list5[index] = !list5[index];

                                            setState(() {});
                                          },
                                          child: list5[index]
                                              ? con1func("30 000")
                                              : con2func(index, list5, list4),
                                        )
                                      ])),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 560,
              left: 20,
              right: 20,
              child: isTrue ? stacsFunc() : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

  stacsFunc() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ZakazPage();
        }));
      },
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.purple),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black12,
                child: Text(
                  "$kup",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )),
            const Text(
              "Корзина",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "${summa} сум ",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  con2func(int index, List list5, List list4) {
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
              minimumSize: Size(40, 40),
            ),

            
            onPressed: () {
               summa=(narx*list4[index])-narx;
              list4[index]--;
              
              isTrue = !isTrue;
              if (list4[index] < 1) {
                list5[index] = !list5[index];
                list4[index] = 1;
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
              "${list4[index]}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minimumSize: const Size(40, 40),
            ),
            onPressed: () {
               summa=narx*kup;
              clor=!clor;
              list4[index]++;
              kup = list4[index];
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

  con1func(String narxi) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: 170,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 194, 187, 186),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        narxi,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  activFun(String imeg) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imeg))),
    );
  }

  appbarFun(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.96,
      height: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 243, 241, 241),
      ),
      child: TextFormField(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SerchPage();
          }));
        },
        decoration: const InputDecoration(
            hintText: "Поиск",
            icon: Icon(
              Icons.search,
              color: Colors.black45,
            ),
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
      ),
    );
  }
}
