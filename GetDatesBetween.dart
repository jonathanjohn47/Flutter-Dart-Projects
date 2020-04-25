List<String> _listOfDays(){
    List<String> listOfDays = <String>[];
    var datefrom = DateTime.parse(fromDate);
    while (true){
      var nextDate = datefrom.add(Duration(days: 1));
      var formatter = DateFormat("dd-MMM-yyyy");
      listOfDays.add(formatter.format(nextDate));
      if (nextDate == DateTime.parse(toDate)){
        break;
      }
    }
    return listOfDays;
  }
