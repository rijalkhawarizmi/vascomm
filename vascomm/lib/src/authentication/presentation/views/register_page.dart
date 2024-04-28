import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vascomm/common/widgets/button.dart';
import 'package:vascomm/common/widgets/text_field.dart';
import 'package:vascomm/core/style/sized_box.dart';
import 'package:vascomm/src/authentication/presentation/views/login_page.dart';

import '../../../../core/assets/assets_image.dart';
import '../../../../core/style/color_app.dart';
import '../../../../core/style/fonts.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  static const String registerRoute = 'register-route';

  TextEditingController namaDepan = TextEditingController();
  TextEditingController namaBelakang = TextEditingController();
  TextEditingController noKTP = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController noTelepon = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 150, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Hai, ',
                          style: FontApp.fontGilroyW600.copyWith(fontSize: 28)),
                      Text('Selamat Datang',
                          style: FontApp.fontGilroyW800.copyWith(fontSize: 28)),
                    ],
                  ),
                  Text('Silahkan login untuk melanjutkan',
                      style: FontApp.fontProximaW600
                          .copyWith(fontSize: 12, color: ColorApp.grey400)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  AssetsImage.loginImage,
                  height: 240,
                  width: 331.04,
                  fit: BoxFit.cover,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: namaDepan,
                          hintText: 'Nama Depan',
                          label: 'Nama Depan',
                        ),
                      ),
                      HorizontalSizedBox(width: 20),
                      Expanded(
                        child: CustomTextField(
                          controller: namaBelakang,
                          hintText: 'Nama Belakang',
                          label: 'Nama Belakang',
                        ),
                      )
                    ],
                  ),
                  VerticalSizedBox(height: 30),
                  CustomTextField(
                    controller: namaDepan,
                    hintText: 'Masukkan No. KTP anda',
                    label: 'No. KTP',
                  ),
                  VerticalSizedBox(height: 30),
                  CustomTextField(
                    controller: namaDepan,
                    hintText: 'Masukkan password anda',
                    label: 'Password',
                  ),
                  VerticalSizedBox(height: 30),
                  CustomTextField(
                    controller: namaDepan,
                    hintText: 'Konfirmasi password anda',
                    label: 'Konfirmasi Password',
                  ),
                  VerticalSizedBox(height: 30),
                  CustomButton(
                    onPressed: () {},
                    text: 'Register',
                    icon: Icon(
                      Icons.arrow_forward,
                      color: ColorApp.white,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 40, right: 40, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Sudah punya akun ?',
                            style: FontApp.fontProximaW400
                                .copyWith(fontSize: 14, color: ColorApp.grey50),
                          ),
                          InkWell(
                            onTap: () =>
                                context.pushNamed(LoginPage.loginRoute),
                            child: Text(
                              'Login sekarang',
                              style: FontApp.fontProximaW600.copyWith(
                                  fontSize: 14, color: ColorApp.black100),
                            ),
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetsImage.copyRight,
                        width: 16,
                        height: 16,
                      ),
                      HorizontalSizedBox(width: 30),
                      Text('SILK. all right reserved.',
                          style: FontApp.fontProximaW600
                              .copyWith(fontSize: 12, color: ColorApp.grey50)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
