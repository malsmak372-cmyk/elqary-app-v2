import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/sirat_card.dart';

class HadessCard extends StatelessWidget {
  const HadessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SiratCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'حديث اليوم',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Divider(
            height: 32.h,
          ),
          Column(
            children: [
              Text(
                '"المسلم أخو المسلم لا يظلمه ولا يسلمه، ومن كان في حاجة أخيه كان الله في حاجته، ومن فرج عن مسلم كربة فرج الله عنه كربة من كربات يوم القيامة، ومن ستر مسلما ستره الله يوم القيامة"',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, height: 1.5),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                '- محمد رسول الله ﷺ',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'رواه البخاري ومسلم',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
