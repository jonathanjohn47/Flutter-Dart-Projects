Navigator.popAndPushNamed(context, "/changepassword");

/*In Main.dart file*/
routes: {
      "/changepassword": (context) => ChangePassword(),}


/*Kill current activity*/
if (Navigator.canPop(context)) {
  Navigator.pop(context);
} else {
  SystemNavigator.pop();
}
