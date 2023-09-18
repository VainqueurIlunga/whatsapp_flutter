import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_dessign/widgets/MessageBar.widget.dart';
import 'package:whatsapp_dessign/widgets/MessageSimple.widgets.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
         preferredSize: Size.fromHeight(65),
         child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
            ),
            leadingWidth: 28,
            title: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(38),
                    child: Image.asset(
                      "images/profil1.jpg",
                      height: 45,
                      width: 45,
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Franck Vainqueur",
                          style: TextStyle(fontSize: 19),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "En ligne",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.5)
                            ),
                            
                          )


                      ],
                    ),
                    )
                ],
              ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(top:18, right: 25 ),
                  child: Icon(
                    CupertinoIcons.video_camera_solid,
                    size: 35,
                    ),
                  ),
                  Padding(
                  padding: EdgeInsets.only(top:18, right: 20 ),
                  child: Icon(
                    Icons.call,
                    size: 25,
                    ),
                  ),
                  Padding(
                  padding: EdgeInsets.only(top:18, right: 10 ),
                  child: Icon(
                    Icons.more_vert,
                    size: 28,
                    ),
                  ),
              ],
         ),
         ),
         body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/profil7.jpg",
              ),
              fit: BoxFit.cover,

               )
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom:80 ),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF3C2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 8,

                        )
                      ]
                    ),
                    child: Text(
                      "les messages et les appels sont chiffrés de bout en bout. aucun tiers, pas même WhatsApp, ne peut les lire ou les écouter. Appuyez pour en savoir plus",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  MessageSimple(),
                  MessageSimple(),
                  MessageSimple(),
                  MessageSimple(),
                  MessageSimple(),
                  MessageSimple(),
                  MessageSimple(),
                  MessageSimple(),
                  MessageSimple(),

                ],
              ),
              )
          ),
         ),
         bottomSheet: MessageBar(),
    );
  }
}