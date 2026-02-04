// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String choose(String item) {
    return 'اختر $item';
  }

  @override
  String mustEnter(String item) {
    return 'يجب إدخال $item';
  }

  @override
  String get comparingPhoto => 'مقارنة الصورة';

  @override
  String get titlePrefixMrs => 'السيدة';

  @override
  String get date => 'التاريخ';

  @override
  String get password => 'كلمة المرور';

  @override
  String get nationalId => 'رقم الهوية';

  @override
  String get identityNumberValidation => 'رقم الهوية غير صحيح';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get invalidEmail => 'بريد إلكتروني غير صحيح';

  @override
  String get otpValidation => 'رمز التحقق يجب أن يكون ٤ أرقام';

  @override
  String get passwordRequired => 'كلمة المرور مطلوبة';

  @override
  String get passwordsDoNotMatch => 'كلمات المرور غير متطابقة';

  @override
  String get explanation => 'شرح';

  @override
  String get homeworkSolution => 'حل الواجب';

  @override
  String get practice => 'تمرين';

  @override
  String get revision => 'مراجعة';

  @override
  String get other => 'أخرى';

  @override
  String get successfullyDownloaded => 'تم تحميل الملف بنجاح';

  @override
  String get downloading => 'جار التحميل...';

  @override
  String get invalidPhoneNumber => 'رقم الهاتف غير صحيح';

  @override
  String get within => 'خلال';

  @override
  String get workingNow => 'يعمل الآن';

  @override
  String get ended => 'انتهى';

  @override
  String nSeconds(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ثواني',
      one: 'ثانية واحدة',
    );
    return '$_temp0';
  }

  @override
  String nMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقائق',
      one: 'دقيقة واحدة',
    );
    return '$_temp0';
  }

  @override
  String nHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعات',
      one: 'ساعة واحدة',
    );
    return '$_temp0';
  }

  @override
  String nDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أيام',
      one: 'يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String nMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أشهر',
      one: 'شهر واحد',
    );
    return '$_temp0';
  }

  @override
  String nYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سنوات',
      one: 'سنة واحدة',
    );
    return '$_temp0';
  }

  @override
  String get serverError => 'خطأ في الخادم';

  @override
  String get badCertificate => 'شهادة غير صالحة';

  @override
  String get requestCancelled => 'تم إلغاء الطلب';

  @override
  String get connectionError => 'لا يوجد اتصال بالإنترنت';

  @override
  String get connectionTimeout => 'انتهت مهلة الاتصال';

  @override
  String get receiveTimeout => 'انتهت مهلة الاستقبال';

  @override
  String get sendTimeout => 'انتهت مهلة الإرسال';

  @override
  String get unknownError => 'خطأ غير معروف';

  @override
  String get welcome => 'مرحبا';

  @override
  String get weekAgo => 'قبل اسبوع';

  @override
  String get weeksAgo => 'قبل اسابيع';

  @override
  String get today => 'اليوم';

  @override
  String get home => 'الرئيسية';

  @override
  String get livestockTitle => 'أجود أنواع الذبائح بأعلى جودة';

  @override
  String get livestockSubtitle =>
      'نوفر لك أجود أنواع الذبائح من مصادر الجودة والصحة';

  @override
  String get viewAllLivestock => 'تصفح الذبائح الآن';

  @override
  String get availableNow => 'متوفر الآن';

  @override
  String get employees => 'موظفين';

  @override
  String get qualityGuarantee => 'ضمان الجودة';

  @override
  String get hoursService => 'خدمة على مدار الساعة';

  @override
  String get livestockByType => 'تصنيف حسب النوع';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get naeemi => 'خروف';

  @override
  String get najdi => 'نجدي';

  @override
  String get harri => 'حري';

  @override
  String get tyus => 'تيوس';

  @override
  String get featuredLivestock => 'الماشية المميزة';

  @override
  String get specialOffers => 'عروض مميزة من الماشية';

  @override
  String get workInProgress => 'عمل بلدي';

  @override
  String get years => 'سنة';

  @override
  String get months => 'شهر';

  @override
  String get saudiRiyal => 'ريال سعودي';

  @override
  String get contactNow => 'تواصل الآن';

  @override
  String get sar => 'ر.س';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get products => 'المنتجات';

  @override
  String get rabwatalriyad => 'ربوة الرياض';

  @override
  String get thebestinKingdom => 'الأفضل في المملكة';
}
