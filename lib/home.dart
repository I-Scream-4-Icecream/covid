import 'package:covid/stats/stats.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: <Widget> [
          SizedBox(height: screenHeight*0.05),
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth/20, 0, screenWidth/20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[700]
                  )
                ),
                IconButton(
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Colors.grey[700],  
                  ),
                  onPressed: () {}
                )
              ]
            )
          ),
          SizedBox(height: screenHeight*0.05),
          Container(
            height: screenHeight*0.5,
            width: screenWidth*0.90,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(34, 43, 69, 100),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Column(
              children: <Widget> [
                CircleAvatar(
                  radius: 18.0,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      '/img/syria.png',
                      width: 100.0,
                      height:100.0,
                      fit: BoxFit.cover
                    )
                  )
                ),
                SizedBox(height: screenHeight*0.01),
                Divider(),
                SizedBox(height: screenHeight*0.05),
                Container(
                  height: screenHeight*0.20,
                  width: screenWidth*0.90,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(32, 39, 62, 100),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Stats()
                  )
                )
              ]
            ),
          )
        ]
      ),
    );
  }
}