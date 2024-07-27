import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class MyChatCard extends StatelessWidget {
  final message;
  final date;
  const MyChatCard({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width ),
        child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: messageColor,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 30, top: 5, bottom: 20),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 2,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      date,
                      style: TextStyle(fontSize: 13, color: Colors.white60),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.done_all,
                      color: Colors.grey,
                      size: 20,
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
