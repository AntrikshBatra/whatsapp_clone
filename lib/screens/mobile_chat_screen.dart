import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Antriksh Batra"),
        backgroundColor: appBarColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()),
          Container(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: mobileChatBoxColor,
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.emoji_emotions,
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.money,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  hintText: "Type a message",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 0, style: BorderStyle.none)),
                      contentPadding: const EdgeInsets.all(10)),
            ),
          )
        ],
      ),
    );
  }
}
