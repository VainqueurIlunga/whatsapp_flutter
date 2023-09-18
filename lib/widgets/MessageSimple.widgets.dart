import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class MessageSimple extends StatelessWidget {
  const MessageSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding: 
              EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                "Hey! Franck Vainqueur! tu vas bien?",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          ),
          Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: 
              EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child: Text(
                "Hey! bro je vais bien et toi, je code une simulation de whatsapp avec le framework flutter du langage de programmation dart",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          ),
          
          
      ],
    );
  }
}