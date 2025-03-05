class Chat {
  String name;
  String image;
  String lastChat;
  String time;

  Chat({
    required this.name, 
    this.image = '', 
    this.lastChat = 'Hey there! I am using WhatsApp',
    this.time = '12:00',
  });
}