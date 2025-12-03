import 'package:intl/intl.dart';

extension StringToDateFormatter on String{
  String formateArticleDate(){
    DateFormat inputFormat=DateFormat("yyyy-MM-dd'T'hh:mm:ss");
    DateTime dateTime= inputFormat.parse(this);
    DateFormat outputFormat=DateFormat("EEE, MM d,yyy");
    return outputFormat.format(dateTime);
  }
}