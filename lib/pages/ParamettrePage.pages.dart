import 'package:flutter/material.dart';

class ParamettrePage extends StatelessWidget {
  const ParamettrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Réglage",
            
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profil1.jpg",
                        height: 65,
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Franck Vainqueur",
                            style: TextStyle(
                               fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "je trouve solution donc je suis!",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black45,
                              ),
                              )
                        ],
                      )
                      ),
                      
                      
                  ],
                ),
              ),
              Divider(),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.key),
                          ),
                          title: Text(
                            "Compte",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                            subtitle: Text(
                              "Notification de sécurité, changer de numéro",
                              style: TextStyle(fontSize: 15),
                              ),
                      ),
                       ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.computer),
                          ),
                          title: Text(
                            "Appareil connecté",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.lock),
                          ),
                          title: Text(
                            "Confidentialité",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                            subtitle: Text(
                              "Bloquer des contacts, message éphémeres",
                              style: TextStyle(fontSize: 15),
                              ),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.message),
                          ),
                          title: Text(
                            "Discussions",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                            subtitle: Text(
                              "Theme, fond d'ecran, historique des discussions",
                              style: TextStyle(fontSize: 15),
                              ),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.notifications),
                          ),
                          title: Text(
                            "Notification",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                            subtitle: Text(
                              "Sonneries des messages, groupes et appels",
                              style: TextStyle(fontSize: 15),
                              ),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.data_usage_rounded),
                          ),
                          title: Text(
                            "Utilisation données et stockage",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                            subtitle: Text(
                              "Utilisation réseau, téléchargement auto.",
                              style: TextStyle(fontSize: 15),
                              ),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.language),
                          ),
                          title: Text(
                            "Langue de l'application",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                            subtitle: Text(
                              "Français (langue de l'appareil)",
                              style: TextStyle(fontSize: 15),
                              ),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.help_center),
                          ),
                          title: Text(
                            "Aide",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                            subtitle: Text(
                              "Centre d'aide, Contactez-nous, Politique de confidentialité",
                              style: TextStyle(fontSize: 15),
                              ),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(Icons.group),
                          ),
                          title: Text(
                            "Inviter un contact",
                            style: TextStyle(
                              fontSize:17
                            ),
                            ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 60),
                        child: Column(
                          children: [
                            Text("From", style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "Facebook",
                              style: 
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        )
            ],
          ),
          ),
      ), 
    );
  }
}