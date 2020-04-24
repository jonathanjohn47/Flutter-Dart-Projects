String selectedDate = "";
void _showDatePicker(BuildContext context) async{
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2001), lastDate: DateTime(3001))
        .then((date){
          setState(() {
            var formatter = DateFormat("dd-MMM-yyyy");
            selectedDate = formatter.format(date);
          });

    });
  }
