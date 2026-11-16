



import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuikit/nuikit.dart';
import 'package:nuikit/models/widgets/menu_component_widget.dart';
import 'package:nuikit/models/widgets/avatar_widget.dart';


@RoutePage()
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----------------AppBar-------------------
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.only(left: 30),
            child: InkWell(
                child: Image.asset('packages/nuikit/assets/icons/sm.png')
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          //Выравнивает по левому краю элементы
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //---------------Профиль-----------------------
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: AvatarWidget(
                        wight: 56,
                        height: 56,
                        onTap: (){},
                        dec: Border.all(
                          color: AppColors.Accent,
                          width: 2,)
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Stone Stellar',style: AppTypography.TittlePoppins.copyWith(letterSpacing: -0.3),

                      ),
                      Row(
                        children: [
                          Image.asset('packages/nuikit/assets/icons/rc.png'),
                          Padding(padding: EdgeInsetsGeometry.only(left: 5),
                            child: Text(
                              'Gold Player',
                              style: AppTypography.MainPoppins.copyWith(
                                  color: AppColors.gold,
                                  letterSpacing: -0.3
                              ),
                            ),
                          )
                        ],
                      ),


                    ],
                  )
                ],
              ),
            ),
            //---------------Элементы меню----------------------
            MenuComponentWidget(
                icon: Image.asset('packages/nuikit/assets/icons/pi.png'),
                inner_padding: 24.1,
                text: 'My Profile'
            ),
            MenuComponentWidget(
                icon: Image.asset('packages/nuikit/assets/icons/si.png'),
                inner_padding: 24.84,
                text: 'Schedule'
            ),
            MenuComponentWidget(
                icon: SizedBox(width: 16.33, height: 14.04, child: Image.asset('packages/nuikit/assets/icons/sic.png')),
                inner_padding: 23.67,
                text: 'Statistics'
            ),
            MenuComponentWidget(
                icon: Image.asset('packages/nuikit/assets/icons/lp.png'),
                inner_padding: 27.4,
                text: 'Discover Combat'
            ),
            MenuComponentWidget(
                icon: Image.asset('packages/nuikit/assets/icons/ch.png'),
                inner_padding: 23.84,
                text: 'Chat'
            ),
            MenuComponentWidget(
                icon: Image.asset('packages/nuikit/assets/icons/chs.png'),
                inner_padding: 24.4,
                text: 'Change language'
            ),
            MenuComponentWidget(
                icon: Image.asset('packages/nuikit/assets/icons/chli.png'),
                inner_padding: 22.97,
                text: 'Change App Skin'
            ),
            //-------------LogOut----------------
            Padding(
              padding: const EdgeInsets.only(top: 101.25,bottom: 46.35),
              child: Row(
                //выравнивает текст по центру
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width:18,
                      height: 18,
                      child: Image.asset("packages/nuikit/assets/icons/li.png")
                  ),
                  Padding(padding: EdgeInsetsGeometry.only(left: 18)),
                  Text(
                      "Logout"
                  )
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}






















