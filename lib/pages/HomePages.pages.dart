import 'package:flutter/material.dart';
import 'package:whatsapp_dessign/widgets/ChatsWidget.widget.dart';
import 'package:whatsapp_dessign/widgets/appelWidget.widget.dart';
import 'package:whatsapp_dessign/widgets/statusWiget.wigets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4, 
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(70), 
        child:AppBar(
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "Whatsapp Unipal", 
              style:  TextStyle(
                fontSize: 21
                ),
                ),
            ),
            actions:  [
              Padding(padding: EdgeInsets.only(top: 12, right: 15),
              child: Icon(
                Icons.search, 
                size: 18,
              ),
              ),
              PopupMenuButton(
                onSelected: (selected){
                   if(selected==5){
                    Navigator.pushNamed(context, "ParamettrePage");
                   }
                },
                 
                
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context)=> [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Nouveau groupe", 
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: 
                        FontWeight.w500
                        ),
                        ),
                    ),
                    PopupMenuItem(
                    value: 2,
                    child: Text(
                      "Nouvelle diffusion", 
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: 
                        FontWeight.w500
                        ),
                        ),
                    ),
                    PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Appareil connecté", 
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: 
                        FontWeight.w500
                        ),
                        ),
                    ),
                    PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Messages Importants", 
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: 
                        FontWeight.w500
                        ),
                        ),
                    ),
                    PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Parametres", 
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: 
                        FontWeight.w500
                        ),
                        ),
                    ),
                ],
                )
            ],
        ) ,
        ),
        body: Column(
          children: [
            Container(
              color:Color (0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 25,
                    child: Tab(
                      icon: Icon(Icons.group), 
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Tab(
                     child: Row(
                      children: [
                        Text("Disc"),
                        SizedBox(
                          width: 8,
                          ),
                        Container(
                          alignment: Alignment.center,
                          //padding: EdgeInsets.all(2),
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "12", 
                            style: TextStyle(
                              color: Color(0xFF075E55),
                              fontSize: 14, 
                              ),
                              ),
                        )
                      ],
                      ),
                    ),
                  ),
                  // tab3
                  Container( 
                    width: 85, 
                    child: Tab(child:Text("Statut") ,) ,
                    ),
                  Container( 
                    width: 90, 
                    child: Tab(child:Text("Appels") ,) ,
                    ),
                ],
              ),
            ),
            Flexible(
              child: TabBarView(
                children: [
                  // camera
                  Container(
                    color: Colors.black,
                  ),
                  // message
                  MessageWidget(),
                  // status
                  StatusWidget(),
                  //appel
                  AppelWidget(),

              ],
              )
              )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          backgroundColor: Color(0xFF075E55),
          child: Icon(Icons.message),
          ),

      )
      );
  }
}