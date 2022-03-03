import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_pertama_stenlyrachmad/models/my_item.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Tugas Pertama',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'RighteousRegular',
                ),
              ),
            ),
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
          child: ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.25,
                child: Card(
                  margin: const EdgeInsets.all(40.0),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: CircleAvatar(
                            backgroundImage:
                                (AssetImage('assets/images/profile_image.png')),
                            radius: 100,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        RichText(
                          text: TextSpan(
                            text: 'Name : ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                            children: [
                              TextSpan(
                                  text: ' Stenly Rachmad Binambuni',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        RichText(
                          text: TextSpan(
                            text: 'Nickname : ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                            children: [
                              TextSpan(
                                  text: ' Teten',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        RichText(
                          text: TextSpan(
                            text: 'Domisili : ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                            children: [
                              TextSpan(
                                text: ' Manado - Sulawesi Utara',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.25),
                          blurRadius: 6,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Text(
                      'Zodiac',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.25),
                          blurRadius: 6,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Text(
                      '⚖︎ LIBRA',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
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
          ),
        ),
      ),
    );
  }
}
