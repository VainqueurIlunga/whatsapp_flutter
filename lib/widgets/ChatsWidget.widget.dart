import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
      ),
      child: Column(
       children: [
        for (int i = 1; i < 12; i++)
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "MessagePage");
            
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "images/profil$i.jpg",
                    height: 60, 
                    width:60,
                    ),
                    
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         "Franck vainqueur (contacts)",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(
                        height: 8,
                        ),
                        Text("Salut coder commment tu vas bien ?",
                        style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54
                      ),
                      ),
                    ],
                  ),
                  ),
                  //Spacer()
                  Column(
                    children: [
                      Text(
                        "15:15",
                        style: TextStyle(
                          fontSize: 12.5,
                          color: Color(0xFF0FCE5E),
                          fontWeight: FontWeight.w500, 
                        ),
                      ),
                      SizedBox(height: 6,),
                      Container(
                        alignment: Alignment.center,
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          color: Color(0xFF0FCE5E),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )


                    ],
                  )
              ],
            ),
          ),

        ),

      ],
      ),
      )    ,
    );
  }
}