showDialog(context: context,
                builder: (context){
              return AlertDialog(title: Text("Route"),
                content: Container(
                  child: Wrap(direction: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Flexible(flex: 1,
                                child: Padding(padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: <Widget>[
                                      Text("From: ", style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text(allroutes[index].fromLocation)],),),),
                              Flexible(flex: 1,
                                child: Padding(padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: <Widget>[
                                      Text("To: ", style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text(allroutes[index].toLocation)],),),)
                            ],),
                          Row(
                            children: <Widget>[
                              Flexible(flex: 1,
                                child: Padding(padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Total Distance: ", style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text(allroutes[index].totalDistance)],),),),
                            ],),
                          Row(
                            children: <Widget>[
                              Flexible(flex: 1,
                                child: Padding(padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Stops: ", style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text(allroutes[index].stops)],),),),
                            ],),
                        ],)
                  ],),),);
                });
