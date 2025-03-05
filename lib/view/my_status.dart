import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/status.dart';
import 'package:whatsapp_clone/widget/status_card.dart';

class MyStatus extends StatefulWidget {
  const MyStatus({super.key});

  @override
  State<MyStatus> createState() => _MyStatusState();
}

class _MyStatusState extends State<MyStatus> {
  
  List<Status> statusList = [
    Status(name: 'You', profileImage: 'images/profile/sk003.jpg', statusImage: 'images/status/gamingPC.jpg'),
    Status(name: 'CU Sonu Singh Patar (IT)', profileImage: 'images/profile/sk004.jpg', statusImage: 'images/status/coffee.jpg'),
    Status(name: 'CU Tarif (IT)', statusImage: 'images/status/cricket.jpg'),
    Status(name: 'CU Debasree (IT)', profileImage: 'images/profile/diana.jpg', statusImage: 'images/status/jewellery.jpg'),
    Status(name: 'CU Baibhab Karmakar (IT)', profileImage: 'images/profile/teddy.jpg', statusImage: 'images/status/coding.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'Status Updates',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20,),
        
            // Your status updates
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueGrey[900],
                  foregroundImage: AssetImage('images/profile/sk003.jpg'),
                  child: Icon(Icons.person, color: Colors.blueGrey[800], size: 50,),
                ),
                SizedBox(width: 20,),
            
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Status',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Tap to add status update',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
            
                Expanded(
                  flex: 1,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add, color: Colors.green,), color: Colors.green,),
                ),
              ],
            ),
            SizedBox(height: 20,),
        
            // Status view
            Text(
              'Recent updates',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10,),
        
            // Horizontal list of Status Cards
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: statusList.map(
                  (status) => StatusCard(status: status)
                ).toList(),
              ),
            ),
            Divider(height: 20, color: Colors.grey, thickness: 0.5,),
        
            // Channels
            Text(
              'Channels',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Stay updated on topics that matter to you. Find channels to follow below.',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey[900],
                shadowColor: Colors.green,
                elevation: 1,
              ), 
              child: Text(
                'Explore more',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 70,
            right: 0,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.black38,
              child: Icon(Icons.edit, color: Colors.white,),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: Icon(Icons.add_a_photo, color: Colors.black87,),
            ),
          ),
        ],
      ),
    );
  }
}
