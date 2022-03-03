import 'package:flutter/material.dart';
import 'package:tugas_pertama_stenlyrachmad/models/my_item.dart';

class MyComments extends StatelessWidget {
  MyComments({Key? key}) : super(key: key);

  List<MyItem> _listItem = [
    MyItem(
        header: "Moto", body: "Work Hard 💪, Play Hard 🎮", isExpanded: true),
    MyItem(
        header: "Hobby",
        body:
            "Saya punya beberapa hobby namun kalau di ceritakan disini semua kayaknya app ini bakal hang deh saking kebanyakan 😂 Jadi saya bahas dua saja ya, hobby saya yang pertama yaitu belajar hal-hal yang baru, entah kenapa kalau tentang hal yang baru, saya selalu bersemangat dan penasaran ingin tahu, jadi ya bisa dibilang ini hobi yang cukup positif yaitu belajar \n\nKedua, saya suka main game, khususnya game moba 5v5 salah satu nya MobileLegends, meskipun sering kesel jg kalo ketemu sama bocah-bocah di Ranked Match karena biar udah serius maen tetep aja di comeback musuh 😭😭😭"),
    MyItem(
        header: "Testimony",
        body:
            'Saya sangat senang dapat mengikuti Bootcamp Flutter di CodeHouse dan berkenalan dengan para instruktur yang ahli di bidangnya, yang selalu sabar mengajar dengan penjelasan di setiap materi yang mudah untuk dipahami. \n\nSaya berharap setelah menyelesaikan Bootcamp ini, saya sudah terlatih dengan skill pemrograman flutter yang sudah siap kerja sehingga saya bisa langsung beralih pekerjaan menjadi Flutter App Developer 📱'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: Colors.black38.withOpacity(.075),
                offset: Offset(1, 1),
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: ExpansionTile(
            title: Text(
              _listItem[0].header,
              style: TextStyle(fontFamily: 'RighteousRegular'),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(_listItem[0].body),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: Colors.black38.withOpacity(.075),
                offset: Offset(1, 1),
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: ExpansionTile(
            expandedAlignment: Alignment.centerLeft,
            title: Text(
              _listItem[1].header,
              style: TextStyle(fontFamily: 'RighteousRegular'),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(_listItem[1].body),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: Colors.black38.withOpacity(.075),
                offset: Offset(1, 1),
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: ExpansionTile(
            expandedAlignment: Alignment.centerLeft,
            title: Text(
              _listItem[2].header,
              style: TextStyle(fontFamily: 'RighteousRegular'),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(_listItem[2].body),
              ),
            ],
          ),
        ),
        SizedBox(height: 80),
      ],
    );
  }
}
