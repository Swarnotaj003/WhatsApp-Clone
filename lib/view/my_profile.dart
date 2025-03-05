import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],

      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 10, 30),
        child: Expanded(
          child: ListView(    
            children: [
              // Header
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      onPressed: () {Scaffold.of(context).closeEndDrawer();}, 
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      'Your profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Pop up menu
                  Expanded(
                    flex: 1,
                    child: PopupMenuButton(
                      icon: Icon(Icons.more_vert, color: Colors.white,),
                      color: Colors.blueGrey[900],
                      itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem(child: Text('New group', style: TextStyle(color: Colors.white),)),
                          PopupMenuItem(child: Text('New broadcast', style: TextStyle(color: Colors.white),)),
                          PopupMenuItem(child: Text('Linked devices', style: TextStyle(color: Colors.white),)),
                          PopupMenuItem(child: Text('Starred messages', style: TextStyle(color: Colors.white),)),
                          PopupMenuItem(child: Text('Payments', style: TextStyle(color: Colors.white),)),
                          PopupMenuItem(child: Text('Read all', style: TextStyle(color: Colors.white),)),
                          PopupMenuItem(child: Text('Settings', style: TextStyle(color: Colors.white),)),
                        ];
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
          
              // Profile Picture
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.blueGrey[900],
                  foregroundImage: AssetImage('images/profile/sk003.jpg'),
                  child: Icon(Icons.person, color: Colors.blueGrey[800], size: 200,),
                ),
              ),

              // ## ANOTHER WAY OF CREATING CIRCLE AVATAR WITH BOXFIT CONTROL
              // Center(
              //   child: ClipOval(
              //     child: Container(
              //       width: 200, 
              //       height: 200, 
              //       color: Colors.blueGrey[900], 
              //       child: Image.asset(
              //         'images/profile/sk003.jpg',
              //         fit: BoxFit.cover, 
              //         width: 200, 
              //         height: 200, 
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 20,),
            
              // Profile Info (collapsable)
              ExpansionTile(
                title: Text('Profile info', style: TextStyle(color: Colors.grey),),
                iconColor: Colors.grey,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Swarnotaj003',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Hey there! I am using WhatsApp',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Phone',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '+91 877XX XXX21',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),            
              SizedBox(height: 15,),
          
              // Actions
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.key_outlined, color: Colors.grey,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Security notifications, change number',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),    
              SizedBox(height: 20,),
          
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.lock_outline, color: Colors.grey,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Privacy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Block contacts, disappearing messages',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.comment_outlined, color: Colors.grey,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chats',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Theme, wallpapers, chat history',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
          
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.notifications, color: Colors.grey,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Message, group & call tones',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.language, color: Colors.grey,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'App language',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'English (device\'s language)',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.help_outline, color: Colors.grey,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Help',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Help center, contact us, privacy policy',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ]
          ),
        ),
      )
    );
  }
}