// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String choose(String item) {
    return 'Choose $item';
  }

  @override
  String mustEnter(String item) {
    return 'You must enter $item';
  }

  @override
  String get comparingPhoto => 'Comparing Photo';

  @override
  String get titlePrefixMrs => 'Mrs.';

  @override
  String get date => 'Date';

  @override
  String get password => 'Password';

  @override
  String get nationalId => 'National ID';

  @override
  String get identityNumberValidation => 'Invalid National ID';

  @override
  String get email => 'Email';

  @override
  String get invalidEmail => 'Invalid Email';

  @override
  String get otpValidation => 'OTP must be 4 digits';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';

  @override
  String get explanation => 'Explanation';

  @override
  String get homeworkSolution => 'Homework Solution';

  @override
  String get practice => 'Practice';

  @override
  String get revision => 'Revision';

  @override
  String get other => 'Other';

  @override
  String get successfullyDownloaded => 'File downloaded successfully';

  @override
  String get downloading => 'Downloading...';

  @override
  String get invalidPhoneNumber => 'Invalid Phone Number';

  @override
  String get within => 'Within';

  @override
  String get workingNow => 'Working now';

  @override
  String get ended => 'Ended';

  @override
  String nSeconds(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seconds',
      one: '1 second',
    );
    return '$_temp0';
  }

  @override
  String nMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return '$_temp0';
  }

  @override
  String nHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours',
      one: '1 hour',
    );
    return '$_temp0';
  }

  @override
  String nDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String nMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months',
      one: '1 month',
    );
    return '$_temp0';
  }

  @override
  String nYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years',
      one: '1 year',
    );
    return '$_temp0';
  }

  @override
  String get serverError => 'Server Error';

  @override
  String get badCertificate => 'Bad Certificate';

  @override
  String get requestCancelled => 'Request Cancelled';

  @override
  String get connectionError => 'No Internet Connection';

  @override
  String get connectionTimeout => 'Connection Timeout';

  @override
  String get receiveTimeout => 'Receive Timeout';

  @override
  String get sendTimeout => 'Send Timeout';

  @override
  String get unknownError => 'Unknown Error';

  @override
  String get welcome => 'Welcome';

  @override
  String get weekAgo => 'Week ago';

  @override
  String get weeksAgo => 'Weeks ago';

  @override
  String get today => 'Today';

  @override
  String get home => 'Home Page';

  @override
  String get livestockTitle => 'Best Quality Livestock with Highest Standards';

  @override
  String get livestockSubtitle =>
      'We provide you with the finest livestock from quality and health sources';

  @override
  String get viewAllLivestock => 'Browse Livestock Now';

  @override
  String get availableNow => 'Available Now';

  @override
  String get employees => 'Employees';

  @override
  String get qualityGuarantee => 'Quality Guarantee';

  @override
  String get hoursService => '24/7 Service';

  @override
  String get livestockByType => 'Classification by Type';

  @override
  String get viewAll => 'View All';

  @override
  String get naeemi => 'Naeemi';

  @override
  String get najdi => 'Najdi';

  @override
  String get harri => 'Harri';

  @override
  String get tyus => 'Tyus';

  @override
  String get featuredLivestock => 'Featured Livestock';

  @override
  String get specialOffers => 'Special Livestock Offers';

  @override
  String get workInProgress => 'Local Work';

  @override
  String get years => 'Years';

  @override
  String get months => 'Months';

  @override
  String get saudiRiyal => 'Saudi Riyal';

  @override
  String get contactNow => 'Contact Now';

  @override
  String get sar => 'SAR';

  @override
  String get profile => 'Profile';

  @override
  String get products => 'Products';

  @override
  String get rabwatalriyad => 'ربوة الرياض';

  @override
  String get thebestinKingdom => 'The best in Kingdom';
}
