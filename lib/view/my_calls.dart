import 'package:flutter/material.dart';

class MyCalls extends StatefulWidget {
  const MyCalls({super.key});

  @override
  State<MyCalls> createState() => _MyCallsState();
}

class _MyCallsState extends State<MyCalls> {
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
            Expanded(
              flex: 1,
              child: Text(
                'Calls',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30,),

            // Custom Loader
            Expanded(
              flex: 6,
              child: Center(
                child: Stack (
                  children: [
                    Center(
                      child: Icon(
                        Icons.call,
                        size: 250,
                        color: Colors.green,
                      ),
                    ),
                    Center(
                      child: CircularProgressIndicator(
                        color: Colors.white10,
                        strokeWidth: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            
            // Footer
            Expanded(
              flex: 2,
              child: Text(
                'The design of this page is left under future scope of this project',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_call, color: Colors.black87,),
      ),
    );
  }
}