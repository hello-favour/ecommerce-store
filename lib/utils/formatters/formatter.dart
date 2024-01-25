import 'package:intl/intl.dart';

class Formatter {
  Formatter._();

  static String formateDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "en_US", symbol: "\$").format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return "(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}";
    } else if (phoneNumber.length == 11) {
      return "(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}";
    }
    return phoneNumber;
  }

  //NOT FULLY TESTED
  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r"\D"), "");

    //EXTRACT THE COUNTRY CODE FROM THE DIGIT ONLY
    String countryCode = "${digitsOnly.substring(0, 2)}";
    digitsOnly = digitsOnly.substring(2);

    //ADD THE REMAINING DIGITS WITH PROPER FORMAT
    final formattedNumber = StringBuffer();
    formattedNumber.write("($countryCode)");

    int i = 0;
    while (i < digitsOnly.length) {
      int grouplength = 2;
      if (i == 0 && countryCode == "+1") {
        grouplength = 3;
      }

      int end = 1 + grouplength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write("");
      }
      i = end;
    }
    return phoneNumber;
  }
}
