drawer: Drawer(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:32),
                child: SizedBox(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(width: double.infinity,
                          child: Container(color: Colors.blue,
                            child: Padding(padding: EdgeInsets.only(top: 32, bottom: 16, left: 16, right: 16),
                              child: Text(studentname == null ? "": studentname, style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),),),),)

                      ],),),),),
              Padding(padding: EdgeInsets.all(16),
                child: InkWell(onTap: (){
                  navigator(context, "profile");
                },
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(8),
                        child: Icon(Icons.person),),
                      Padding(padding: EdgeInsets.all(8),
                        child: Text("Profile"),)
                    ],),),),
              Padding(padding: EdgeInsets.only(left: 16, right: 16),
                child: Container(width: double.infinity, height: 1, color: Colors.blueGrey,),),

              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(16),
                      child: InkWell(onTap: (){navigator(context, "selectassignmentdate");},
                        child: Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(8),
                              child: Icon(Icons.file_download),),
                            Padding(padding: EdgeInsets.all(8),
                              child: Text("Download Assignments"),)
                          ],),),),
                    Padding(padding: EdgeInsets.all(16),
                      child: InkWell(onTap: (){navigator(context, "attendance");},
                        child: Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(8),
                              child: Icon(Icons.check),),
                            Padding(padding: EdgeInsets.all(8),
                              child: Text("Attendance"),)
                          ],),),),
                    Padding(padding: EdgeInsets.all(16),
                      child: InkWell(onTap: (){navigator(context, "homework");},
                        child: Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(8),
                              child: Icon(Icons.home),),
                            Padding(padding: EdgeInsets.all(8),
                              child: Text("Homework"),)
                          ],),),),
                    Padding(padding: EdgeInsets.all(16),
                      child: InkWell(onTap: (){navigator(context, "applyleave");},
                        child: Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(8),
                              child: Icon(Icons.error),),
                            Padding(padding: EdgeInsets.all(8),
                              child: Text("Apply Leave"),)
                          ],),),),
                    Padding(padding: EdgeInsets.all(16),
                      child: InkWell(onTap: (){navigator(context, "reportcard");},
                        child: Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(8),
                              child: Icon(Icons.filter_frames),),
                            Padding(padding: EdgeInsets.all(8),
                              child: Text("Report Card"),)
                          ],),),),
                    Padding(padding: EdgeInsets.all(16),
                      child: InkWell(onTap: (){navigator(context, "dailymarks");},
                        child: Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(8),
                              child: Icon(Icons.score),),
                            Padding(padding: EdgeInsets.all(8),
                              child: Text("Daily Marks"),)
                          ],),),),
                  ],),),

              Padding(padding: EdgeInsets.only(left: 16, right: 16),
                child: Container(width: double.infinity, height: 1, color: Colors.blueGrey,),),
              Padding(padding: EdgeInsets.all(16),
                child: InkWell(onTap: () async {
                  List<String> keys = ["student_name", "admission_number", "father_name", "phone_number", "student_class", "uid"];
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  for (int i = 0; i < keys.length; i++){
                    String key = keys[i];
                    prefs.setString(key, "NULL");
                  }
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/");
                  /*Navigator.pop(context);
                  Navigator.pushNamed(context, "/login");*/
                },
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(8),
                        child: Icon(Icons.exit_to_app),),
                      Padding(padding: EdgeInsets.all(8),
                        child: Text("Log Out"),)
                    ],),),),
              Padding(padding: EdgeInsets.only(left: 16, right: 16),
                child: Container(width: double.infinity, height: 1, color: Colors.blueGrey,),),
              Padding(padding: EdgeInsets.all(16),
                child: Text("Developed and Maintained by IIY Software Pvt. Ltd.", style: TextStyle(color: Colors.blue.shade800),),)
            ],),),),
