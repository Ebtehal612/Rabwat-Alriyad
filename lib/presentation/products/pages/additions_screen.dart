import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rabwat_alriyad/core/assets/assets.gen.dart';
import 'package:rabwat_alriyad/core/localization/app_localizations.dart';
import 'package:rabwat_alriyad/core/theme/palette.dart';
import 'package:rabwat_alriyad/core/widgets/app_bars/custom_app_bar.dart';
import 'package:rabwat_alriyad/core/widgets/text/custom_text.dart';

class AdditionsScreen extends StatelessWidget {
  static const routeName = '/additions';

  const AdditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final List<Map<String, dynamic>> additions = [
      {
        'name': localizations.liver,
        'image': Assets.images.kebda.path,
        'price': '85',
      },
      {
        'name': localizations.trotters,
        'image': Assets.images.kawarei.path,
        'price': '50',
      },
      {
        'name': localizations.tripe,
        'image': Assets.images.kersha.path,
        'price': '35',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        center: true,
        showBackButton: true,
        onBack: () => Navigator.pop(context),
        child: CustomText.s18(
          localizations.additions,
          color: Palette.dayBreakBlue.color7,
          bold: true,
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.w),
        itemCount: additions.length,
        itemBuilder: (context, index) {
          final item = additions[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 24.h),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(
                    item['image'],
                    width: 250.w,
                    height: 200.h,
                    fit: BoxFit.cover,
                  ),
                ),
                12.verticalSpace,
                CustomText.s20(
                  item['name'],
                  color: Palette.dayBreakBlue.color7,
                  bold: true,
                ),
                4.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText.s14(
                      localizations.priceColon,
                      color: Palette.dayBreakBlue.color7,
                    ),
                    CustomText.s18(
                      item['price'],
                      color: Palette.dayBreakBlue.color7,
                      bold: true,
                    ),
                    4.horizontalSpace,
                    CustomText.s14(
                      localizations.sar,
                      color: Palette.dayBreakBlue.color7,
                    ),
                  ],
                ),
                12.verticalSpace,
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.dayBreakBlue.color7,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 48.w,
                      vertical: 12.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                  ),
                  child: CustomText.s14(
                    localizations.addToOrder,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
