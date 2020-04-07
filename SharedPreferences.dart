//Adding value to Sharedpreferences
addStringToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', "abc");
}

//Reading from Sharedpreferenes
SharedPreferences.getInstance().then((SharedPreferences sp){
  print(sp.getString("deviceID"));
});
