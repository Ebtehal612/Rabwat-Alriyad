import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rabwat_alriyad/core/localization/app_localizations.dart';
import 'package:rabwat_alriyad/core/theme/palette.dart';
import 'package:rabwat_alriyad/core/widgets/text/custom_text.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
                color: Palette.dayBreakBlue.color7.withValues(alpha: 0.1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
                child: Image.asset(
                  imagePath,
                  height: 120.h,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 120.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:
                            Palette.dayBreakBlue.color7.withValues(alpha: 0.1),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(12.r)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image_not_supported,
                            size: 40.sp,
                            color: Palette.dayBreakBlue.color7
                                .withValues(alpha: 0.5),
                          ),
                          8.verticalSpace,
                          CustomText.s12(
                            'Image not found',
                            color: Palette.dayBreakBlue.color7
                                .withValues(alpha: 0.5),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.s14(
                    name,
                    color: Palette.dayBreakBlue.color7,
                    bold: true,
                  ),
                  8.verticalSpace,
                  Row(
                    children: [
                      CustomText.s12(
                        '$price ${AppLocalizations.of(context)!.sar}',
                        color: Palette.dayBreakBlue.color7,
                        bold: true,
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Palette.dayBreakBlue.color7,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.all(10.w),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomText.s12(
                              AppLocalizations.of(context)!.addtocart,
                            ),
                            8.horizontalSpace,
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
