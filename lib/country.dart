import 'package:flutter/material.dart';
class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  List l2 = [
    "🇮🇳",
    "🇦🇺",
    "🇧🇪",
    "🇧🇿",
    "🇨🇳",
    "🇨🇴",
    "🇨🇾",
    "🇩🇰",
    "🇩🇲",
    "🇫🇷",
    "🇬🇦",
    "🇩🇪",
    "🇮🇩",
    "🇮🇷",
    "🇮🇶",
    "🇮🇪",
    "🇯🇵",
    "🇯🇴",
    "🇱🇻",
    "🇳🇿",
  ];
  List l1 = [
    "India",
    "Australia",
    "Belgium",
    "Belize",
    "China",
    "Colombia",
    "Cyprus",
    "Denmark",
    "Dominica",
    "France",
    "Gabon",
    "Germany",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Japan",
    "Jordan",
    "Latvia",
    "New Zealand",
  ];
  List cap=[
    "New Delhi",
    "Canberra",
    "Brussels",
    "Belmopan",
    "Beijing",
    "Bogota",
    "Nicosia",
    "Copenhagen",
    "Roseau",
    "Paris",
    "ibreville",
    "Berlin",
    "Jakarta",
    "Tehran",
    "Baghdad",
    "Dublin",
    "Tokyo",
    "Amman",
    "Riga",
    "Wellington",
  ];
  List col=[
    Colors.cyan.shade50,
    Colors.blue.shade50,
    Colors.green.shade50,
    Colors.yellow.shade50,
    Colors.pink.shade50,
    Colors.deepPurple.shade50,
    Colors.cyan.shade50,
    Colors.blue.shade50,
    Colors.green.shade50,
    Colors.yellow.shade50,
    Colors.pink.shade50,
    Colors.deepPurple.shade50,
    Colors.cyan.shade50,
    Colors.blue.shade50,
    Colors.green.shade50,
    Colors.yellow.shade50,
    Colors.pink.shade50,
    Colors.deepPurple.shade50,
    Colors.cyan.shade50,
    Colors.blue.shade50,
  ];
  List col2=[
    Colors.cyan,
    Colors.blue,
    Colors.green,
    Colors.yellow.shade800,
    Colors.pink,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.green,
    Colors.yellow.shade800,
    Colors.pink,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.green,
    Colors.yellow.shade800,
    Colors.pink,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Country List"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: l1.asMap().entries.map((e) => Sampleui(l2[e.key],l1[e.key],cap[e.key],col[e.key],col2[e.key])).toList()),
      ),
    ),
    );
  }

  Widget Sampleui(String a3,String name,String c1,Color a1,Color a2)
  {
    return Container(
      margin: EdgeInsets.only(top: 10,right: 10,left: 10),
      height: 75,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: a1,
        border: Border.all(color: a2),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("$a3",style: TextStyle(fontSize: 30),),
          ),
          SizedBox(
            width: 60,
          ),
          Center(
            child: Text(
              "$name\n$c1",
              style: TextStyle(color: a2,fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
