List<String> allhomeworks = <String>[];
Future<void> fetchhomeworks() async {
    QuerySnapshot result =
        await Firestore.instance.collection('HomeWork').document("001").collection("List")
        .getDocuments();
    List<DocumentSnapshot> documents = result.documents;
    for (int i = 0; i< documents.length; i++){
      setState(() {
        allhomeworks.add(documents[i]["homework"]);
      });
    }
  }
