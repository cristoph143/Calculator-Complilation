main() {
  String date = "March 23, 1992, Monday, 10:23:30";
  print("Before Date Format: $date");
  Map<String,dynamic> result;
  result = parseDate(date);
  print("After Date Format: $result");
}
Map<String,dynamic> parseDate(String date){
  String regexp = date.replaceAll(' ','_')
                      .replaceAll(',','')
                      .replaceAll(':','_');
  List<String> dateElements = regexp.split('_');
  List<String> title = ["Month", 
                        "Day", 
                        "Year", 
                        "Day of the Week",
                        "Hour",
                        "Minute",
                        "Second"
                       ];
  print("Inside Map:");
  print("Regexp: $regexp");
  print("Date Elements: $dateElements");
  print("Title: $title");
  int i = 0;
  Map<String,dynamic> result = {};
  for(String key in title){
    result[key] = dateElements[i];
    print('$i  $dateElements');
    i++;
  }
  print(result);
  return result;
}