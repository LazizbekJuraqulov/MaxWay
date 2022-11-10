import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _lights = false;
  bool _laght = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Настройки",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            InkWell(
              child: Container(
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ListTile(
                      leading: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white60,
                            minimumSize: Size(25, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Icon(
                          Icons.language,
                          color: Color.fromARGB(255, 97, 23, 110),
                        ),
                      ),
                      title: const Text(
                        "Язык",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          _settingModalBottomSheet(context);
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: SwitchListTile(
                  title: const Text(
                    "Личные сообщения",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  value: _lights,
                  onChanged: (bool value) {
                    setState(() {
                      _lights = value;
                    });
                  },
                  secondary: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                        minimumSize: Size(25, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Icon(
                      Icons.wallet_outlined,
                      color: Color.fromARGB(255, 97, 23, 110),
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: SwitchListTile(
                  title: const Text(
                    "Уведомления",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  value: _laght,
                  onChanged: (bool value) {
                    setState(() {
                      _laght = value;
                    });
                  },
                  secondary: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                        minimumSize: Size(25, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Icon(
                      Icons.add_alert,
                      color: Color.fromARGB(255, 97, 23, 110),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/rasmlar/10.jpg"),
                    radius: 20,
                  ),
                  title: Text('Uzb'),
                  onTap: (){},
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage:AssetImage("assets/rasmlar/11.png"),
                    radius: 20,
                  ),
                  title: Text('Rus'),
                  onTap: (){},
                ),
              ],
            ),
          );
        });
  }
}
