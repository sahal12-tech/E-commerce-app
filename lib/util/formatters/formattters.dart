import 'package:intl/intl.dart';

class EFormatters{
  static Future<String> formatDate(DateTime? date) async {
    date ??= DateTime.now();
    return DateFormat('dd-MMM--yyyy').format(date); //customize the date format as needed
  }

  static String formatcurrency(double amount){
    return NumberFormat.currency(locale: 'en_PK', symbol: 'pkr').format(amount);
    //customize the currency local and symbol as needed
  }

  static String? formatPakistaniPhoneNumber(String input) {
    // Step 1: Remove everything except digits
    String digits = input.replaceAll(RegExp(r'[^0-9]'), '');

    // Step 2: Normalize country code (923001234567 -> 03001234567)
    if (digits.length == 12 && digits.startsWith('92')) {
      digits = '0${digits.substring(2)}';
    }

    // Step 3: Handle missing leading zero (3001234567 -> 03001234567)
    if (digits.length == 10 && digits.startsWith('3')) {
      digits = '0$digits';
    }

    // Step 4: Validate — must be 11 digits, starting with 03
    final isValid = digits.length == 11 && digits.startsWith('03');
    if (!isValid) return null;

    // Step 5: Format as 0300-1234567
    final part1 = digits.substring(0, 4);
    final part2 = digits.substring(4);
    return '$part1-$part2';
  }

  /// Just validates without formatting
  static bool isValidPakistaniPhoneNumber(String input) {
    return formatPakistaniPhoneNumber(input) != null;
  }
}