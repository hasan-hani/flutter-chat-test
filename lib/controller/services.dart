changeToDate(String? dateTime){
  dateTime!.substring(0,10).replaceAll('-', '/');
} //convert String Datetime to format yyyy/mm/dd