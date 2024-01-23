import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Color.fromARGB(255, 4, 223, 223), Color.fromARGB(255, 3, 219, 198)],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _textHeader(),
              _textWelcome(),
              _buttonStart(),
              _textWelcome2()
              
          
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(110),
              child: Image.network(
                "https://scontent.fbkk10-1.fna.fbcdn.net/v/t1.15752-9/413950086_891254739340133_145888812419652000_n.png?_nc_cat=110&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeHe-AjnLtF70CYtrQc__5bBoNV0qHEw4aWg1XSocTDhpaRkq7Oc-ejocx8oJdskPY44quBW_O7Qe7s5Kun4cHdo&_nc_ohc=FVlsHRJBuOQAX8JrRAc&_nc_ht=scontent.fbkk10-1.fna&oh=03_AdSP-Uru7GTxs42WGieavuRlM3Ryy2dDPnmPPtnqOLvKtw&oe=65CDCECD",
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _textHeader() {
  return Padding(
    padding: const EdgeInsets.all(50.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.help)),
        TextButton(
            onPressed: () {},
            child: Text(
              "HELP",
              style: TextStyle(color: Colors.black),
            )),
        Container(
          width: 2.0,
          height: 20,
          color: Colors.white,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "ภาษาไทย",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )),
      ],
    ),
  );
}

Widget _textWelcome() {
  return Container(
      padding: EdgeInsets.all(20.0),
      //color: Color.fromARGB(255, 38, 210, 233).withOpacity(0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "ยินดีต้อนรับ",
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "เข้าสู่ร้านของเรา",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "chanawut saeaeib 652021045",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ));
}

Widget _buttonStart() {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
      ),
      SizedBox(height: 10),
      SizedBox(
        width: double.infinity,
      ),
    ],
  );
}
Widget _textWelcome2() {
  return Container(
      padding: EdgeInsets.all(70.0),
      //color: Color.fromARGB(255, 38, 210, 233).withOpacity(0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Copyright @ 2019 monman.Inwshop.com",
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "All rights reserved",
            style: TextStyle(
                fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ));
}