import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class StateGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStatCard("Total Cases", "1.8 M"),
                _buildStatCard("Deaths", "108 K"),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStatCard("Recovered", "1.8 M"),
                _buildStatCard("Active", "1.31 M"),
                _buildStatCard("Critical", "N/A"),

              ],
            ),
          )
        ],
      ),
    );
  }
  Expanded _buildStatCard(String title ,String count ){
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.red
            ]
        )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),),
            Text(count,style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),)

          ],
        ),
      ),
    );
  }
}
