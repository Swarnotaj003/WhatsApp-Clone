import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/status.dart';

class StatusCard extends StatefulWidget {
  final Status status;

  const StatusCard({
    super.key,
    required this.status,
  });

  @override
  State<StatusCard> createState() => _StatusCardState();
}

class _StatusCardState extends State<StatusCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: const EdgeInsets.all(5),
      height: 240,
      width: 135,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.status.statusImage),
          opacity: 0.5,
          fit: BoxFit.cover, 
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.blueGrey[800],
      ),
      child: Column(
        children: [
          Expanded(flex: 5, child: SizedBox(height: 10,)),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey[900],
                  foregroundImage: AssetImage(widget.status.profileImage),
                  child: Icon(Icons.person, color: Colors.blueGrey[800], size: 40,),
                ),
                SizedBox(width: 4,),
                Expanded(
                  child: Text(
                    widget.status.name, 
                    style: TextStyle(
                      color: (widget.status.name ==('You')) ? Colors.green : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: (widget.status.name ==('You')) ? 18 : 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}