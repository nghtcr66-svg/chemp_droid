import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nuikit/models/widgets/button_widget.dart';
import 'package:nuikit/models/widgets/custom_field_widget.dart';
import 'package:nuikit/models/widgets/checkbox_widget.dart';
import 'package:nuikit/nuikit.dart';


@RoutePage()
class ShcelduegameScreen extends StatelessWidget {




  const ShcelduegameScreen({
    super.key,



  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 26, top: 67),
                child: Text(
                  "Schedule Game",
                  style: AppTypography.TittlePoppins.copyWith(fontSize: 22),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27,top: 30, right: 31),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomFieldWidget(
                    text_hint: "Game name",
                    controller: TextEditingController()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27,top: 30,right: 31),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomFieldWidget(
                    text_hint: "Category",
                    controller: TextEditingController(),
                    suffixIcon: GestureDetector(
                      onTap: (){},
                      behavior: HitTestBehavior.opaque,
                      child: Center(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: Image.asset(
                          'packages/nuikit/assets/icons/dd.png',
                          width: 8, // Подберите нужную ширину (например, 10 или 12)
                          height: 4, // Подберите нужную высоту (например, 5 или 6)
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27,top: 30, right: 31),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomFieldWidget(
                    text_hint: "Winning Price",
                    controller: TextEditingController()
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27, top: 46,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //выравнивает сие фигню к низу типо по вертикали к пинзу
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //подстраивает размер
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "FROM",
                          style: AppTypography.Caption2_Bold.copyWith(color: AppColors.Accent),
                        ),
                        Row(
                          children: [
                            Text(
                              "MON, NOV 4,2019",
                              style: AppTypography.Caption_Regular.copyWith(fontSize: 14),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: GestureDetector(
                                onTap: (){},
                                behavior: HitTestBehavior.opaque,
                                child: SizedBox(
                                  width: 8,
                                    height: 4,
                                    child: Image.asset('packages/nuikit/assets/icons/dd.png')),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  Row(
                    children: [
                      Text(
                        "12:30 AM",
                        style: AppTypography.Caption_Regular.copyWith(fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: GestureDetector(
                          onTap: (){},
                          behavior: HitTestBehavior.opaque,
                          child: SizedBox(
                              width: 8,
                              height: 4,
                              child: Image.asset('packages/nuikit/assets/icons/dd.png')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27, top: 18,right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "TO",
                        style: AppTypography.Caption2_Bold.copyWith(color: AppColors.Accent),
                      ),
                      Row(
                        children: [
                          Text(
                            "MON, NOV 4,2019",
                            style: AppTypography.Caption_Regular.copyWith(fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: GestureDetector(
                              onTap: (){},
                              behavior: HitTestBehavior.opaque,
                              child: SizedBox(
                                  width: 8,
                                  height: 4,
                                  child: Image.asset('packages/nuikit/assets/icons/dd.png')),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "12:30 AM",
                        style: AppTypography.Caption_Regular.copyWith(fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: GestureDetector(
                          onTap: (){},
                          behavior: HitTestBehavior.opaque,
                          child: SizedBox(
                              width: 8,
                              height: 4,
                              child: Image.asset('packages/nuikit/assets/icons/dd.png')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27,top: 107,right: 31),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomFieldWidget(
                    text_hint: "Description",
                    controller: TextEditingController()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27,right: 31,top: 47),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "REMINDERS",
                    style: AppTypography.Title2_Regular.copyWith(color: AppColors.Accent),
                  ),
                  CheckboxWidget(
                      padding: 16,
                      text: "Notification"
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 68, top: 70),
              child: ButtonWidget(
                  widht: 224,
                  height: 58,
                  text: "Publish",
                  onTap: (){}
              ),

            )



          ],
        ),
      ),
    );
  }
}



















