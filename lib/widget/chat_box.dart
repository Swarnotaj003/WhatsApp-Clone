import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat.dart';

class ChatBox extends StatefulWidget {
  final Chat chat;

  const ChatBox({super.key, required this.chat});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueGrey[900],
            foregroundImage: AssetImage(widget.chat.image),
            child: Icon(Icons.person, color: Colors.blueGrey[800], size: 50,),
          ),

          SizedBox(width: 20,),

          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chat.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: (widget.chat.name ==('Swarnotaj003 (You)')) ? Colors.green : Colors.white,
                  ),
                ),
                Text(
                  widget.chat.lastChat,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.chat.time,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5,),
                Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}