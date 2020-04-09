import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget{
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: Home(),
      title: Text("NODE MCU", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue.shade800),),);
  }
}


/*Dependency...
splashscreen: ^1.2.0*/
