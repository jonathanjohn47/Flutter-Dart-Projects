List<String> getListOfDays(){
    List<String> listOfDays = <String>[];
    var formatter = DateFormat("dd-MMM-yyyy");
    listOfDays.add(fromDate);
    DateTime datefrom = formatter.parse(fromDate);
    DateTime nextDate = datefrom.add(Duration(days: 1));
    while (nextDate != formatter.parse(toDate)){
      listOfDays.add(formatter.format(nextDate));
      datefrom = nextDate;
      nextDate = datefrom.add(Duration(days: 1));
    }
    listOfDays.add(formatter.format(nextDate));
    print(listOfDays.length);
    return listOfDays;
  }
