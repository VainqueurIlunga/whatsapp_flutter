
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppelWidget extends StatelessWidget {
  const AppelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i =3; i < 9; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "images/profil$i.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Ingenieur",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox( height: 8,),
                          Row(
                            children: [
                              Icon(
                                Icons.call_made,
                                color: Color(0xFF075E55),
                                size: 19,
                              ),
                              SizedBox(width: 5,),
                              Text("(2) aujourd'hui, 14:05",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                              )

                            ],
                          )
                      ],
                    ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.call_sharp,
                        color: Color(0xFF075E55),
                        ),
                    )
                ],
                
              ),
            ),
            for (int i =7; i < 12; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "images/profil$i.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Ingenieur",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox( height: 8,),
                          Row(
                            children: [
                              Icon(
                                Icons.call_received,
                                color: Colors.red,
                                size: 19,
                              ),
                              SizedBox(width: 5,),
                              Text("(2) aujourd'hui, 14:05",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                              )

                            ],
                          )
                      ],
                    ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.videocam,
                        color: Color(0xFF075E55),
                        size: 30,
                        ),
                    )
                ],
                
              ),
            )
          ],
        ),
         ),

    );
  }
}