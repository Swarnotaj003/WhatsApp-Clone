import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/community.dart';
import 'package:whatsapp_clone/widget/community_card.dart';

class MyCommunity extends StatefulWidget {
  const MyCommunity({super.key});

  @override
  State<MyCommunity> createState() => _MyCommunityState();
}

class _MyCommunityState extends State<MyCommunity> {
  List<Community> communityList = [
    Community(name: 'Iteration 2025', about: 'Annual University Tech Fest!', image: 'images/community/iteration.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'Communities',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20,),
        
            // New community
            Row(
              children: [
                Card(
                  color: Colors.grey[600],
                  child: Icon(
                    Icons.groups,
                    color: Colors.white30,
                    size: 50,
                  ),
                ),
                SizedBox(width: 20,),
            
                Expanded(
                  flex: 9,
                  child: Text(
                    'New community',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
            
                Expanded(
                  flex: 2,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add, color: Colors.green,), color: Colors.green,),
                ),
              ],
            ),
            SizedBox(height: 20,),
      
            // Communities view
            Text(
              'Your communities',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10,),
      
            // List of communities
            Expanded(
              child: ListView(
                children: communityList.map(
                  (community) => CommunityCard(community: community)
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
