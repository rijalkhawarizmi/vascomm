

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vascomm/src/authentication/presentation/views/login_page.dart';
import 'package:vascomm/src/home/presentation/views/profile_page.dart';

import '../../../../common/widgets/button.dart';
import '../../../../core/assets/assets_image.dart';
import '../../../../core/style/color_app.dart';
import '../../../../core/style/fonts.dart';
import '../../../../core/style/sized_box.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Column(
          
            children: <Widget>[
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    alignment: Alignment.topCenter,
                    width: 50,
                    height: MediaQuery.of(context).size.height,
                    color: ColorApp.navyBlack.withOpacity(0.5),
                    child: Icon(
                      Icons.highlight_remove_rounded,
                      color: ColorApp.white,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 100,horizontal: 30),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(AssetsImage.date),
                              ),
                              HorizontalSizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Angga Praja',
                                    style: FontApp.fontGilroyW700.copyWith(
                                        fontSize: 14,
                                        color: ColorApp.navyBlack),
                                  ),
                                  Text(
                                    'Membership BBLK',
                                    style: FontApp.fontProximaW600.copyWith(
                                        fontSize: 11,
                                        color: ColorApp.navyBlack),
                                  ),
                                ],
                              )
                            ],
                          ),

                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      context.goNamed(ProfilePage.routeProfilePage);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 30),
                                      child: Text(
                                        'Profil Saya',
                                        style: FontApp.fontProximaW600.copyWith(
                                            fontSize: 12, color: ColorApp.grey500),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Pengaturan',
                                    style: FontApp.fontProximaW600.copyWith(
                                        fontSize: 12, color: ColorApp.grey500),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 50),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 30),
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: ColorApp.grey600,
                                        size: 15,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: ColorApp.grey600,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          VerticalSizedBox(height: 50),
                          SizedBox(
                            width: 131,
                            child: CustomButton(
                              onPressed: () {
                                context.goNamed(LoginPage.loginRoute);
                              },
                              text: 'Logout',
                              color: ColorApp.red,
                              height: 28,
                              widht: 131,
                              borderRadius:50
                            ),
                          ),
                          VerticalSizedBox(height: 100),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Ikuti kami di',style: FontApp.fontGilroyW500.copyWith(fontSize: 16,color: ColorApp.navyBlack),),
                              HorizontalSizedBox(width: 10),
                              Image.asset(AssetsImage.fb,height: 13,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(AssetsImage.ig,height: 13,),
                              ),
                              Image.asset(AssetsImage.twitter,height: 13,),

                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
            ],
          ),
        );
  }
}