import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


log(dynamic text) {
  if (kDebugMode) {
    print(text);
  }
}

Size getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

navigateToNextPage(BuildContext context, Widget widget, {bool back = true}) {
  if (back) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  } else {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => widget));
  }
}

navigateToNextPageWithTransition(BuildContext context, Widget widget,
    {bool back = true}) {
  if (back) {
    Navigator.push(
      context,
      PageRouteBuilder(pageBuilder: (BuildContext context, Animation animation,
          Animation secondaryAnimation) {
        return widget;
      }, transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      }),
    );
  } else {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(pageBuilder: (BuildContext context, Animation animation,
          Animation secondaryAnimation) {
        return widget;
      }, transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      }),
    );
  }
}

void showLoadingDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          child: SizedBox(
            width: 40,
            height: 60,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        );
      });
}

Center errorLoading(err, stack) {
  log(err);
  log(stack);
  return const Center(
      child: Text("Une erreur s'est produite pendant le chargement...."));
}

Center loadingError() {
  return const Center(
    child: CupertinoActivityIndicator(),
  );
}

String FormaDecimal(String a) {
  String retour;
  retour = a;
  switch (a) {
    case '0':
      retour = "00";
      break;
    case "1":
      retour = "01";
      break;
    case "2":
      retour = "02";
      break;
    case "3":
      retour = "03";
      break;
    case "4":
      retour = "04";
      break;
    case "5":
      retour = "05";
      break;
    case "6":
      retour = "06";
      break;
    case "7":
      retour = "07";
      break;
    case "8":
      retour = "08";
      break;
    case "9":
      retour = "09";
      break;
    default:
      break;
  }
  return retour;
}

String next_year(DateTime date,String date1) {
  DateTime dateTime=DateTime.now();
  if(date1.isNotEmpty){
    dateTime=DateFormat('dd/MM/yyyy').parse(date1);}
  else
  {
    dateTime=date;
  }
  return dateTime.year % 4 == 0 && dateTime.year % 100 != 0 || dateTime.year % 400 == 0
      ? DateFormat('dd/MM/yyyy')
      .format(DateTime(dateTime.year + 1, dateTime.month, dateTime.day))
      : DateFormat('dd/MM/yyyy').format(
      DateTime(dateTime.year, dateTime.month, dateTime.day)
          .add(const Duration(days: 365)));
}

String date_format(DateTime date) {
  return DateFormat('dd/MM/yyyy')
      .format(DateTime(date.year, date.month, date.day));
}
DateTime dateFormat(String date) {
  return DateFormat('dd/MM/yyyy').parse(date);
}
String format_decimal(String element) {
  switch(element)
  {
    case '0':
      return '00';
    case '1':
      return '01';
    case '2':
      return '02';
    case '3':
      return '03';
    case '4':
      return '04';
    case '5':
      return '05';
    case '6':
      return '06';
    case '7':
      return '07';
    case '8':
      return '08';
    case '9':
      return '09';
    default:
      return element;
  }
}



String format_montant(int value) {
  String val = value.toString();
  String result = "";
  int cpt = 0;
  for (int i = val.length - 1; i >= 0; i--) {
    result = val.substring(i, i + 1) + result;
    cpt++;
    if (cpt % 3 == 0 && i != 0) {
      result = " " + result;
    }
  }
  return result;
}


















