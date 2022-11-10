import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:partfoliya_1/korzinka.dart/login.dart';

class KozinkaPage extends StatefulWidget {
  const KozinkaPage({Key? key}) : super(key: key);

  @override
  State<KozinkaPage> createState() => _KozinkaPageState();
}

class _KozinkaPageState extends State<KozinkaPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 120,
        title: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Мои заказы",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.amber,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Creates border
                    color: Colors.white,
                  ),
                  tabs: const [
                    Text(
                      "История заказов",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    Text(
                      "Текущие заказы",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        
        height: 200,
        child: TabBarView(controller: _tabController, children: [
         const SizedBox(
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 200,
   
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text(
                    "Статус заказа №1342",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                 const Text(
                    "Заказ оформлен",
                    style: TextStyle(fontSize: 15, color: Colors.purpleAccent),
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                      CircleAvatar(
                        radius: 25,
                        child: Icon(
                          Icons.shopify_rounded,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.purple,
                      ),
                    
                      CircleAvatar(
                        radius: 25,
                        child: Icon(
                          Icons.shopping_bag_sharp,
                          color: Color.fromARGB(153, 146, 144, 144),
                        ),
                        backgroundColor: Colors.white60,
                      ),
                      CircleAvatar(
                          radius: 25,
                          child: Icon(
                            Icons.check_circle_outline_sharp,
                            color: Color.fromARGB(153, 146, 144, 144),
                          ),
                          backgroundColor: Colors.white60),
                  
                    ],
                  ),
                
                ]),
          ),
        ]),
      ),
    );
  }
}
