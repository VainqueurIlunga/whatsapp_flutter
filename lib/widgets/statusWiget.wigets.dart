import 'package:flutter/material.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey, width: 3)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),

                      child: Image.asset(
                        "images/profil1.jpg",
                        height: 55,
                        width: 55,
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mon statut",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Il y'a 18h",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.camera_alt,
                        color: Color(0xFF075E55),
                        ),
                    ),
                    
                     Container(
                      child: Icon(
                        Icons.draw,
                        color: Color(0xFF075E55),
                        ),
                        
                    ),
                    
                  
                ],
              ),

            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "MISES A JOUR RECENTES",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6)
                ),
              ),
            ),
            for (int i =2; i<5; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.blue, width: 2),

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profil$i.jpg",
                        height:55,
                        width: 55,
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sinai Kyembe",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "il y'a 12h",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                            ),
                        ),
                      ],
                    ),
                    )
                ],
              ),

            ),
             Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "MISES A JOUR DEJA VUES",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6)
                ),
              ),
            ),
            for (int i =5; i<9; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey, width: 2),

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profil$i.jpg",
                        height:55 ,
                        width: 55,
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Master Achille",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "il y'a 20h",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                            ),
                        ),
                      ],
                    ),
                    )
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}