import 'package:covid19/config/palette.dart';
import 'package:covid19/config/styles.dart';
import 'package:covid19/data/data.dart';
import 'package:covid19/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 // String _country = "Pak";


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          _buildYourOwnTest(screenHeight)

        ],
      ),
    );
  }
  SliverToBoxAdapter _buildHeader(double screenHeight){
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("COVID-19",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                /*CountryDropdowm(
                  countries: ['CN','PAK','IN','UK','USA','TUR'],
                  country: _country,
                  onChanged: (val)=> setState(()=> _country = val),
                )*/
              ],
            ),
            SizedBox(height: screenHeight*0.03,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Are you feeling sick?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(height: screenHeight*0.01,),
                Text(
                  "If you feeling sick with any COVID-19 symptoms, please call or text "
                ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
                ),
                SizedBox(height: screenHeight*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton.icon(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10
                      ),
                      onPressed: (){},
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      icon: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Call Now",
                        style: Styles.buttonTextStyle,
                      ),
                    ),
                    FlatButton.icon(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10
                      ),
                      onPressed: (){},
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      icon: Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Message",
                        style: Styles.buttonTextStyle,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  SliverToBoxAdapter _buildPreventionTips(double screeHeight){
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Preventions Tips",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              letterSpacing: 1
            ),),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: prevention
                  .map((e) => Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(e.keys.first,
                      height: screeHeight * 0.1,),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    e.values.first,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      letterSpacing: .3
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ))
                .toList()
            )
          ],
        ),
      ),
    );
  }
  SliverToBoxAdapter _buildYourOwnTest(double screenHeight){
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        padding: EdgeInsets.all(10),
        height: screenHeight*0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA1FE4),Palette.primaryColor],
          ),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("images/own_test.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Do your own test!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: screenHeight*0.01,),
                Text("Follow the instructions\nto do your own test.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                  maxLines: 2,
                ),
              ],
            )

          ],
        ),
      ),
    );
  }

  }
