import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat.dart';
import 'package:whatsapp_clone/widget/chat_box.dart';

class MyChats extends StatefulWidget {
  const MyChats({super.key});

  @override
  State<MyChats> createState() => _MyChatsState();
}

class _MyChatsState extends State<MyChats> {

  List<Chat> chatList = [
    Chat(name: 'Swarnotaj003 (You)', image: 'images/profile/sk003.jpg', time: '22:15'),
    Chat(name: 'Ma', time: '20:00', lastChat: 'Photo'), 
    Chat(name: 'Baba', time: '19:00', lastChat: 'Yes'), 
    Chat(name: 'Meta AI', image: 'images/profile/meta.png', lastChat: 'with Llama 3.2'), 
    Chat(name: 'CU Sonu Singh Patar (IT)', image: 'images/profile/sk004.jpg', lastChat: 'Goodnight!'), 
    Chat(name: 'CU Baibhab Karmakar (IT)', image: 'images/profile/teddy.jpg', time: 'Yesterday', lastChat: 'Okay bro'),
    Chat(name: 'JioFiber Offers', image: 'images/profile/jio.jpg', time: 'Yesterday', lastChat: 'Dear customer, thank you for being'), 
    Chat(name: 'CU Tarif (IT)', time: '27 Feb', lastChat: 'Hmm'), 
    Chat(name: 'CU Debasree (IT)', image: 'images/profile/diana.jpg', time: '27 Feb', lastChat: 'Sticker'), 
    Chat(name: 'Lenskart', image: 'images/profile/lenskart.jpg', time: '22 Feb', lastChat: 'Your style, simplified!'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey[900],
                  prefixIcon: Icon(Icons.search, color: Colors.white54,),   
                  suffixIcon: Image.asset('images/profile/meta.png', scale: 25,),      
                  hintText: 'Ask Meta AI or Search',
                  hintStyle: TextStyle(color: Colors.white54, fontWeight: FontWeight.w100),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(width: 5, color: Colors.green, style: BorderStyle.solid)
                  ),  
                ),
              ),
          ),
          SizedBox(height: 10,),

          // Chat boxes
          Expanded(
            child: ListView(
              children: chatList.map(
                (chat) => ChatBox(chat: chat)
              ).toList()
            ),
          )
        ],
      ),

      // More than one FloatingActionButton in a page
      floatingActionButton: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 70,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blueGrey[900],
              child: Image.asset('images/profile/meta.png', scale: 20,),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: Icon(Icons.add_comment, color: Colors.black87,),
            ),
          ),
        ],
      )
    );
  }
}
