import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width / 1.25,
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
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline,
                      ),
                    )
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
                        style: TextStyle(fontWeight: FontWeight.normal))
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
    );
  }
}
