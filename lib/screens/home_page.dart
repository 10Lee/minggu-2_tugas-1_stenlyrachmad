import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_pertama_stenlyrachmad/models/my_item.dart';
import 'package:tugas_pertama_stenlyrachmad/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tugas Pertama',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'RighteousRegular',
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/profile_bg.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.9), BlendMode.srcOver),
          ),
        ),
        child: Center(
            // child: ListView(
            //   physics: BouncingScrollPhysics(
            //     parent: AlwaysScrollableScrollPhysics(),
            //   ),
            //   children: [
            //     NameCard(),
            //     MyZodiac(),
            //     MyComments(),
            //   ],
            // ),
            child: ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: 1 + _listItem.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Column(
                children: [
                  NameCard(),
                  MyZodiac(),
                  SizedBox(height: 20.0),
                ],
              );
            }
            final data = _listItem[index - 1];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
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
                  // _listItem[index].header,
                  data.header,
                  style: TextStyle(fontFamily: 'RighteousRegular'),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      // _listItem[index].body,
                      data.body,
                    ),
                  ),
                ],
              ),
            );
          },
        )),
      ),
    );
  }
}
