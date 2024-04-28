import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vascomm/common/widgets/button.dart';
import 'package:vascomm/common/widgets/text_field.dart';
import 'package:vascomm/core/assets/assets_image.dart';
import 'package:vascomm/core/style/color_app.dart';
import 'package:vascomm/core/style/fonts.dart';
import 'package:vascomm/core/style/sized_box.dart';
import 'package:vascomm/src/authentication/presentation/views/register_page.dart';
import 'package:vascomm/src/home/presentation/views/home_page.dart';

import '../../../authentication/presentation/bloc/authentication_bloc.dart';
import '../../../authentication/presentation/widget/toast_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String loginRoute = '/';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorApp.white,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
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
              margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                      controller: email,
                      hintText: 'Masukkan email anda',
                      label: 'Email'),
                  VerticalSizedBox(height: 30),
                  CustomTextField(
                    controller: password,
                    hintText: 'Masukkan password anda',
                    label: 'Password',
                    label2: 'Lupa password anda?',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  BlocConsumer<AuthenticationBloc, AuthenticationState>(
                    listener: (context, state) {
                      if (state is AuthenticationSuccess) {
                        context.goNamed(HomePage.routeHomePage);
                      } else if (state is AuthenticationError) {
                        toastWidget(state.message);
                      }
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      return CustomButton(
                        onPressed: () {
                          if (email.text.isEmpty) {
                            toastWidget('Masukkan Email');
                          } else if (password.text.isEmpty) {
                            toastWidget('Masukkan Password');
                          } else {
                            context.read<AuthenticationBloc>().add(
                                EventAuthentication(
                                    email: email.text,
                                    password: password.text));
                          }
                        },
                        isLoading:
                            state is AuthenticationLoading ? true : false,
                        text: 'Login',
                        icon: Icon(
                          Icons.arrow_forward,
                          color: ColorApp.white,
                        ),
                      );
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 40, right: 40, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Belum punya akun ?',
                            style: FontApp.fontProximaW400
                                .copyWith(fontSize: 14, color: ColorApp.grey50),
                          ),
                          InkWell(
                            onTap: () =>
                                context.pushNamed(RegisterPage.registerRoute),
                            child: Text(
                              'Daftar sekarang',
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
                      SizedBox(
                        width: 5,
                      ),
                      Text('SILK. all right reserved.',
                          style: FontApp.fontProximaW600
                              .copyWith(fontSize: 12, color: ColorApp.grey50)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
