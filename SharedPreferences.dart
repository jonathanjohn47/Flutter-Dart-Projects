//Adding value to Sharedpreferences
addStringToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', "abc");
}

//Reading from Sharedpreferenes
String mName;
  void getstudentname() {
    SharedPreferences.getInstance().then((SharedPreferences sp){
      String studentname = sp.getString("student_name");
      mName = studentname;
    });
  }
