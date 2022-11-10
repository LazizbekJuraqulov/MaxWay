import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BurgerPage extends StatefulWidget {
  const BurgerPage({Key? key}) : super(key: key);

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const  Text("Бургеры",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body:Container(child: Column(
        children: [
          Expanded(child: Container(decoration: const BoxDecoration(image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/rasmlar/7.jpg"))),)),
          Expanded(child:Container(
            padding: const EdgeInsets.all(10),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Маск Бургер",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                
                Text("Га́мбургер (англ. hamburger, сокр. бу́ргер) — это блюдо, обычно состоящее из котлеты из измельченного мяса, как правило, говядины, помещенной внутрь нарезанной булочки. Гамбургеры часто подают с сыром, салатом, помидорами, луком, маринованными огурцами, беконом или чили; соусами, такими как кетчуп, горчица,",style: TextStyle(fontSize: 18,),),
              ],
            ),
          ), ),
        ],
      )) ,
    ); 
  
    
  }
}