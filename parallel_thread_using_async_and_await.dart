Future _timer() async{
    var now = new DateTime.now();
    var next = new DateTime.now();
    while (await next.difference(now).inMilliseconds !=5000){
      print(next.difference(now).inMilliseconds);
      next = await new DateTime.now();
   }
}

main(){
  _timer();
  /*Every calculation that needs to run in parallel should follow "await" keyword in the function above*/
}
