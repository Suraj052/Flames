import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#fff6fa"),
      body: SafeArea(
        child: Column(
          children: [

            //APPBAR
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://images.squarespace-cdn.com/content/v1/5f874e5d14ae001a1b6878ae/1607887919356-14Q88OLWD1SKC7Q5MUCJ/christopher-campbell-va0YmkIFtPA-unsplash.jpg?format=1000w"),
                      radius: 25,
                    ),
                  Text("Find Flames",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20.0,color: HexColor("#FF5F8F"),fontFamily: 'NunitoRegular')),
                  Icon(Iconsax.setting_4,color: HexColor("#505050"),size: 25.0)
                ],
              ),
            ),

            //HORIZONTAL STORY SCROLL VIEW
            Container(
              width: size.width,
              height: 160,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 2, 0),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    story("https://images.unsplash.com/photo-1559386484-97dfc0e15539?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60","Likes",false),
                    SizedBox(width: 10),
                    story("https://s3-alpha-sig.figma.com/img/4ae4/4cc8/43ef87b7720fee946b80d111fe5e6e6d?Expires=1682294400&Signature=hRwiY-Y9rWU1mRFOwydYTTUgQs9O7GFh0ENiVCeaZQ7PZS6QaNfkXDL813SMMCxT~xw4aQi0rr97uG22AU1Fui2E5MjGutPKbglrPdeBA~w5FgBCTO5I5ly5hy0jj4sQcYu9szUkuLp5TluJu7CzimBea9w4pk4aANPljrUx4ebHTyfKKcKehLbfTcWsBp30wEUm4VHytluCSOwGQMVUKLXLjIKLRSK35ecSqPvl1N2UjPrvHKN4susVcLSG~sHTP369P531naSBb-hFR7Kgrk0Cs9AKISmPtDUtBjb8WON~Y9n2rgh3boRAHQO-E--OyeEgKMohdxMYHCIM-uoB8g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                        "Tony", true),
                    SizedBox(width: 10),
                    story("https://images.unsplash.com/photo-1614975058789-41316d0e2e9c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80", "James", true),
                    SizedBox(width: 10),
                    story("https://images.unsplash.com/photo-1551022372-0bdac482b9d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
                        "Jordon", true)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            Expanded(
              child: Stack(
                children: <Widget>[

                  //CHAT SECTION WITH DIFFERENT PEOPLE
                  Positioned(
                    top: 50,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30, 35, 30, 0),
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          profile("Jordan",
                              "https://images.unsplash.com/photo-1551022372-0bdac482b9d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
                              true,"Hii!", true, "13:10",true, "1",size),
                          profile("Tim",
                              "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJveXN8ZW58MHx8MHx8&w=1000&q=80",
                              true,"Hii!", true, "13:10", false,"1",size),
                          profile("James",
                              "https://images.unsplash.com/photo-1614975058789-41316d0e2e9c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
                              false,"Hii!", false, "13:10", true,"9+",size),
                        ],
                      )
                    ),
                  ),

                  //SEARCH BOX
                  Positioned(
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(15.0, 10.0,15.0,0.0),
                      padding: EdgeInsets.fromLTRB(20.0, 0.0,10.0,0.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.0,1.0),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.25),
                            ),
                          ]
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          Icon(
                            Iconsax.search_normal_1,
                            color: HexColor("#999999"),size: 28,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: TextField(
                              onChanged:(value) {},
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  fontFamily: 'NunitoRegular',
                                  color: HexColor("#999999"),
                                  fontSize:19.0,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }


  //SINGLE STORY WIDGET
  Widget story(String url,String name,bool tick)
  {
    return Container(
      height: 138,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: 128,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                image: NetworkImage(url),
                      fit: BoxFit.cover
                    ),
                ),
              child: tick? null:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite,color: Colors.white,size: 35.0),
                  SizedBox(height: 3),
                  Text("20",style: TextStyle(color: Colors.white,fontSize: 22,fontFamily: 'NunitoRegular',fontWeight: FontWeight.w700))
                ],
              ),
            ),
          ),
          Positioned(
            left: 17,
            right: 17,
            bottom: 2,
            child: Container(
                width: 10,
                height: 18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Center(
                    child: tick?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(name,style:TextStyle(fontSize:12.0,fontFamily: 'NunitoRegular',color: HexColor("#505050"))),
                        SizedBox(width: 3),
                        Icon(Iconsax.verify5,size: 15,color: Colors.blueAccent)
                      ],
                    ):
                    Text(name,style:TextStyle(fontSize:12.0,fontFamily: 'NunitoRegular',color: HexColor("#505050")))
                ),
              )
          )
        ],
      ),
    );
  }

  //SINGLE CHAT PROFILE
  Widget profile(String name,String url,bool status,String message,bool tick,String time,bool checkn,String notification,Size size)
  {
    return Column(
      children: [
        SizedBox(height: 12),
        Container(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(url),
                radius: 32.0,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        checkn?
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    tick?
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(name,style:TextStyle(fontSize:22.0,fontFamily: 'NunitoRegular',color: HexColor("#505050"))),
                                        SizedBox(width: 3),
                                        Icon(Iconsax.verify5,size: 22,color: Colors.blueAccent)
                                      ],
                                    ):
                                    Text(name,style:TextStyle(fontSize:22.0,fontFamily: 'NunitoRegular',color: HexColor("#505050")))
                                  ],
                                ),
                                Text(status?message:"Typing...",style:TextStyle(fontSize:18.0,fontFamily: 'NunitoRegular', color: status? HexColor("#505050"):HexColor("#FF5F8F"),fontStyle:status? FontStyle.normal:FontStyle.italic))
                              ],
                            ):
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    tick?
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(name,style:TextStyle(fontSize:22.0,fontFamily: 'NunitoRegular',color: HexColor("#818181"))),
                                        SizedBox(width: 3),
                                        Icon(Iconsax.verify5,size: 22,color: Colors.blueAccent)
                                      ],
                                    ):
                                    Text(name,style:TextStyle(fontSize:22.0,fontFamily: 'NunitoRegular',color: HexColor("#818181")))
                                  ],
                                ),
                                Text(status?message:"Typing...",style:TextStyle(fontSize:18.0,fontFamily: 'NunitoRegular', color: status? HexColor("#818181"):HexColor("#FF5F8F"),fontStyle:status? FontStyle.normal:FontStyle.italic))
                              ],
                            )
                       ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        checkn?
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:[
                                Text(time,style:TextStyle(fontSize:13.0,fontFamily: 'NunitoRegular',color: HexColor("#505050"))),
                                SizedBox(height: 8),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: HexColor("#FF5F8F"),
                                  child: Text(notification,style:TextStyle(fontSize:11.0,fontFamily: 'NunitoRegular',color: HexColor("#ffffff"))),
                                )
                              ]):
                            Text(time,style:TextStyle(fontSize:13.0,fontFamily: 'NunitoRegular',color: HexColor("#505050"))),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        Divider(
          color: HexColor("#FFF6FA"),
          thickness: 1.5,
        )
      ],
    );
  }
}
