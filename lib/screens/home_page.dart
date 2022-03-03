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
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              NameCard(),
              MyZodiac(),
              MyComments(),
            ],
          ),
        ),
      ),
    );
  }
}
