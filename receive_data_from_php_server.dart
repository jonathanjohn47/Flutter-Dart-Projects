
Future getPhoneNumber() async{
  var url = "http://testiiy.life/fetchdata.php?deviceID=id001";
  http.Response response = await http.get(url);
  var data = response.body;
  phonenumber = data.toString();
  print("Phone Number: " + phonenumber);
}
