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
                _buildStatCard("Total Cases", "1.8 M",Colors.green),
                _buildStatCard("Deaths", "108 K",Colors.pink),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStatCard("Recovered", "1.8 M",Colors.blue),
                _buildStatCard("Active", "1.31 M",Colors.purple),
                _buildStatCard("Critical", "N/A",Colors.deepOrange),

              ],
            ),
          )
        ],
      ),
    );
  }
  Expanded _buildStatCard(String title ,String count , MaterialColor color){
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
         color: color
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
