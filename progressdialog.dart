@override
  void initState() {
    Future.delayed(Duration(milliseconds: 20), (){
      fetchhomeworks();
    });
    super.initState();
  }

var progressDialog;
  Future<void> showPR() async {
    await progressDialog.show();
  }
  Future<void> hidePR() async {
    await progressDialog.hide();
  }

@override
Widget build(BuildContext context) {
    progressDialog = new ProgressDialog(context);
    progressDialog.style(
        message: ""
    );
}

Future<void> fetchhomeworks() async {
    showPR();
    QuerySnapshot result =
        await Firestore.instance.collection('HomeWork').document("001").collection("List")
        .where("subject", isEqualTo: subject)
        .where("class", isEqualTo: "Class " + mClass)
        .where("date", isEqualTo: selectedDate)
        .getDocuments();
    List<DocumentSnapshot> documents = result.documents;
    setState(() {
      allhomeworks = <String>[];
      for (int i = 0; i< documents.length; i++){
        allhomeworks.add(documents[i]["homework"]);
        selectedDate = documents[i]["date"];
      }
    });
    hidePR();
  }
