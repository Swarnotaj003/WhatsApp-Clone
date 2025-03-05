import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Expanded(flex: 1, child: IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner, color: Colors.white,))),
          SizedBox(width: 10,),
          Expanded(flex: 1, child: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined, color: Colors.white,))),
        ],
      ),
    );
  }
}