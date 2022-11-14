import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice1_fluuter/custom/style_text.dart';
import 'package:practice1_fluuter/widget/product_grid.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/images/menu.svg"),
                      Text("Home"),
                      SvgPicture.asset("assets/images/search.svg")
                    ],
                  ),
                ),

              ),
              Container(
                child:Padding(
                  padding: EdgeInsets.only(left: 16,top: 32),
                  child: Text("Discover the most modern furniture",
                    style: CustomTextStyle.title_description,
                  textAlign: TextAlign.left,),
                ),

              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 8,top: 30),
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(

                      unselectedLabelColor: ColorCustom.textColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorCustom.tabColor),
                      tabs: [
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.transparent, width: 1)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("All",style: CustomTextStyle.selected_tabbar,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.transparent, width: 1)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Living Room",style: CustomTextStyle.selected_tabbar,),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.transparent, width: 1)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Bedroom",style: CustomTextStyle.selected_tabbar),
                          ),
                        ),
                      ),
                    ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 16,top: 32),
                  child: Row(
                    children: [
                      Text("Recommended Furniture",style: CustomTextStyle.title_recommend,),
                    ],
                  ),
                ),
              ),


            ],

          )
          ,

        ),


      ),
    );

  }
}
