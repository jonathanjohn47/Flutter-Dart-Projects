String smssent, verificationId;

  Future<void> verifyPhone(BuildContext context) async{
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId){
      this.verificationId = verId;
    };
    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]){
      this.verificationId = verId;
      smsCodeDialoge(context).then((value){
        print("Code Sent");
      });
    };
    final PhoneVerificationCompleted verifiedSuccess = (AuthCredential auth){
      print("Success");
    };
    final PhoneVerificationFailed verifyFailed = (AuthException e) {
      print('Error Message: ${e.message}');
    };
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "+91${_phoneNumberController.text}",
      timeout: const Duration(seconds: 30),
      verificationCompleted: verifiedSuccess,
      verificationFailed: verifyFailed,
      codeSent: smsCodeSent,
      codeAutoRetrievalTimeout: autoRetrieve,
    );
  }
  Future<bool> smsCodeDialoge(BuildContext context){
    return showDialog(context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: Text('Provide OTP'),
          content: TextField(keyboardType: TextInputType.number,
            onChanged: (value) {
              this.smssent  = value;
            },
          ),
          contentPadding: EdgeInsets.all(10.0),
          actions: <Widget>[
            new FlatButton(
                onPressed: (){
                  FirebaseAuth.instance.currentUser().then((user){
                    if(user != null){
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dash()),
                      );*/
                      print("Current user: ${user.phoneNumber}");
                    }
                    else{
                      Navigator.of(context).pop();
                      signIn(smssent);
                    }
                    //This is where you put your working code that commences after initiation has been done
                    _initiateFormSubmission(context);
                  }
                  );
                },
                child: Text('Done', style: TextStyle( color: Colors.blue),))
          ],
        );
      },
    );
  }

  Future<void> signIn(String smsCode) async {
    final AuthCredential credential = PhoneAuthProvider.getCredential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    await FirebaseAuth.instance.signInWithCredential(credential)
        .then((user){
      Navigator.of(context).pop();
    }).catchError((e){
      print(e);
    });
  }
