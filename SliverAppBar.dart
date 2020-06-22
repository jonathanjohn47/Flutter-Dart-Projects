body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 240,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(padding: EdgeInsets.all(16),
                  child: CarouselSlider(items: imagelinklist.map((i){
                    return Builder(builder: (context){
                      return Image.asset(i);
                    },);
                  }).toList(),
                      options: CarouselOptions(
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(microseconds: 200)
                      )),),
                title: Text("Parents Dashboard"),
              )
          ),
          SliverFillRemaining(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "profile");},
                          child: Card(elevation: 2, color: Colors.yellow.shade800,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/user.png", scale: scalefactor,),
                                Text("Profile", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),),
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "trackbus");},
                          child: Card(elevation: 2, color: Colors.green.shade600,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/location.png", scale: scalefactor,),
                                Text("Track Bus", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),)

                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "attendance");},
                          child: Card(elevation: 2, color: Colors.cyan.shade600,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/attendance.png", scale: scalefactor,),
                                Text("Attendance", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),),
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "homework");},
                          child: Card(elevation: 2, color: Colors.purple.shade600,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/homework.png", scale: scalefactor,),
                                Text("Homework", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),)

                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "applyleave");},
                          child: Card(elevation: 2, color: Colors.blue.shade800,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/leave.png", scale: scalefactor,),
                                Text("Apply Leave", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),),
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "calendar");},
                          child: Card(elevation: 2, color: Colors.green.shade800,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/calendar.png", scale: scalefactor,),
                                Text("Calendar", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),)

                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "reportcard");},
                          child: Card(elevation: 2, color: Colors.lime.shade700,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/marks.png", scale: scalefactor,),
                                Text("Report Card", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),),
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "dailymarks");},
                          child: Card(elevation: 2, color: Colors.deepOrangeAccent,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/reportcard.png", scale: scalefactor,),
                                Text("Daily Marks", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),)

                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "payfees");},
                          child: Card(elevation: 2, color: Colors.red.shade400,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/payment.png", scale: scalefactor,),
                                Text("Pay Fees", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),),
                      SizedBox(height: subcardheight, width: subcardwidth,
                        child: InkWell(onTap: (){navigator(context, "quizdates");},
                          child: Card(elevation: 2, color: Colors.lightGreen.shade600,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/quiz.png", scale: scalefactor,),
                                Text("Practice Quiz", style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],),),),)
                    ],),
                ],),
            ),),
        ],)
