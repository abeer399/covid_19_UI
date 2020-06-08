import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:covid19/config/palette.dart';
import 'package:covid19/config/styles.dart';
import 'package:covid19/data/data.dart';
import 'package:covid19/widgets/custom_appBar.dart';
import 'package:covid19/widgets/widgets.dart';
import 'package:flutter/material.dart';


class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor ,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(),
          _buildRegionTab(),
          _buildStatsTabBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: StateGrid(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20),
            sliver: SliverToBoxAdapter(
              child: CovidBarChart(
                covidCases : covidUSADailyCases
              ),
            ),
          )
        ],
      ),
    );
  }
  SliverPadding _buildHeader(){
    return SliverPadding(
      padding: EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: Text(
          "Statistic",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
      ),

    );
  }
  SliverToBoxAdapter _buildRegionTab(){
   return SliverToBoxAdapter(
     child: DefaultTabController(
       length: 2,
       child: Container(
         margin: EdgeInsets.symmetric(horizontal: 20),
         height: 50,
         decoration: BoxDecoration(
           color: Colors.white24,
           borderRadius: BorderRadius.circular(25)
         ),
         child: TabBar(
           indicator: BubbleTabIndicator(
             tabBarIndicatorSize: TabBarIndicatorSize.tab,
             indicatorColor: Colors.white,
             indicatorHeight: 40
           ),
           labelStyle: Styles.tabTextStyle,
           labelColor: Colors.black,
           unselectedLabelColor: Colors.white,
           tabs: [
             Text("My Country"),
             Text("Global"),
           ],
           onTap: (index){},
         ),
       ),
     ),
   );
  }
  SliverPadding _buildStatsTabBar(){
    return SliverPadding(
      padding: EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 3,
          child: TabBar(
            indicatorColor:Colors.transparent ,
            labelStyle: Styles.tabTextStyle,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: [
              Text("Total"),
              Text("Today"),
              Text("Yesterday"),
            ],
            onTap: (index){},
          ),
        ),
      ),
    );

  }
}
