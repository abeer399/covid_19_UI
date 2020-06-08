
import 'package:covid19/config/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class CovidBarChart extends StatelessWidget {
  final List<double> covidCases;

  const CovidBarChart({this.covidCases});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
        )
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Daily New Cases",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .85,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 16.0,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    margin: 10,
                    showTitles:true,
                    textStyle: Styles.chatLabelsStyle,
                    // ignore: missing_return
                    getTitles: (double values){
                      switch(values.toInt()){
                        case 0:
                          return "May 31";
                        case 1:
                          return "June 1";
                        case 2:
                          return "June 2";
                        case 3:
                          return "June 3";
                        case 4:
                          return "June 4";
                        case 5:
                          return "June 5";
                        case 6:
                          return "June 6";
                        default:
                          return "";
                      }
                    }
                  ),
                  leftTitles: SideTitles(
                    margin: 10.0,
                    showTitles: true,
                    textStyle: Styles.chatLabelsStyle,
                    getTitles: (value){
                      if(value==0){
                        return '0';
                      }
                      else if(value % 3 == 0 ){
                        return '${value ~/ 3 * 5}K';
                      }
                      return "";
                    }
                  )
                ),
                gridData:  FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 3 == 0 ,
                  getDrawingVerticalLine: (value) => FlLine(
                    color: Colors.black12,
                    strokeWidth: 1.0,
                    dashArray: [5],
                  )
                ),
                borderData: FlBorderData(
                  show: false
                ),
                barGroups: covidCases.asMap().map((key, value) => MapEntry(
                  key,
                  BarChartGroupData(
                    x: key,
                    barRods:[BarChartRodData(
                      y: value,
                      color: Colors.red
                    )]
                  )
                )).values.toList()
              )
            ),
          )
        ],
      ),
    );
  }
}
