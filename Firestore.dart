void initiatePasswordChange(){
    Miscellaneous miscellaneous = new Miscellaneous();
    if (miscellaneous.checkEmptyFields([oldPasswordController, newPasswordController])) {
      //Read data from Firestore
      Firestore.instance
          .collection(collection)
          .document(document)
          .get()
          .then((DocumentSnapshot snapshot) {
        String password = snapshot.data["password"];
        if (password == oldPasswordController.text){
          //Push data into Firestore
          final DocumentReference postRef = Firestore.instance.collection(collection).document(document);
          Firestore.instance.runTransaction((Transaction tx) async {
            DocumentSnapshot postSnapshot = await tx.get(postRef);
            if (postSnapshot.exists) {
              await tx.update(postRef, <String, String>{"password": newPasswordController.text});
            }
          });
        }
      });
    }
  }
