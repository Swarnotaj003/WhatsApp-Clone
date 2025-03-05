import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/community.dart';

class CommunityCard extends StatefulWidget {
  final Community community;

  const CommunityCard({
    super.key,
    required this.community,
  });

  @override
  State<CommunityCard> createState() => _CommunityCardState();
}

class _CommunityCardState extends State<CommunityCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[900],
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Image(
              height: 320,
              width: 320,
              image: AssetImage(widget.community.image),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10,),
            Text(
              widget.community.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              widget.community.about,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}