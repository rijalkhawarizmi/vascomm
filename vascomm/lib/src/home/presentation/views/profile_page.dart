import 'package:flutter/material.dart';
import 'package:vascomm/common/widgets/button.dart';
import 'package:vascomm/common/widgets/text_field.dart';

import '../../../../core/assets/assets_image.dart';
import '../../../../core/style/color_app.dart';
import '../../../../core/style/fonts.dart';
import '../../../../core/style/sized_box.dart';
import '../widgets/tabbar_item.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  static const String routeProfilePage = 'profile-page-route';

  TextEditingController nameDepan = TextEditingController();
  TextEditingController nameBelakang = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController noTelpon = TextEditingController();
  TextEditingController noKTP = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        actions: [
          Icon(
            Icons.shopping_cart_sharp,
            color: ColorApp.navyBlack,
          ),
          HorizontalSizedBox(width: 20),
          Icon(
            Icons.notifications_sharp,
            color: ColorApp.navyBlack,
          ),
          HorizontalSizedBox(width: 20)
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                decoration: BoxDecoration(
                  color: ColorApp.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 40,
                child: TabBar(
                  // isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: ColorApp.blueLight,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  labelColor: ColorApp.navyBlack,
                  unselectedLabelColor: ColorApp.navyBlack,
                  tabs: [
                    TabItem(title: 'Profil Saya'),
                    TabItem(title: 'Pengaturan'),
                  ],
                ),
              ),
              SizedBox(
                height: 1000,
                child: TabBarView(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorApp.white),
                      child: Column(
                        children: [
                          Container(
                            // padding: EdgeInsets.all(30),
                            height: 152,
                            width: 311,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorApp.navyBlack,
                                image: DecorationImage(
                                    image: AssetImage(
                                      AssetsImage.image4,
                                    ),
                                    fit: BoxFit.cover)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            AssetImage(AssetsImage.date),
                                      ),
                                      HorizontalSizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Angga Praja',
                                            style: FontApp.fontGilroyW400
                                                .copyWith(
                                                    fontSize: 20,
                                                    color: ColorApp.white),
                                          ),
                                          Text(
                                            'Membership BBLK',
                                            style: FontApp.fontGilroyW400
                                                .copyWith(
                                                    fontSize: 14,
                                                    color: ColorApp.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: ColorApp.navy,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8))),
                                  child: Text(
                                    'Lengkapi profile anda untuk memaksimalkan penggunaan aplikasi',
                                    style: FontApp.fontProximaW400.copyWith(
                                        fontSize: 12, color: ColorApp.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalSizedBox(height: 20),
                          Text(
                            'Pilih data yang ingin ditampilkan',
                            style: FontApp.fontGilroyW600.copyWith(
                                fontSize: 16, color: ColorApp.navyBlack),
                          ),
                          VerticalSizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: ColorApp.blueLight,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  AssetsImage.user,
                                  width: 15,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Data Diri',
                                    style: FontApp.fontGilroyW600.copyWith(
                                        fontSize: 14,
                                        color: ColorApp.navyBlack),
                                  ),
                                  Text(
                                    'Data diri anda sesuai KTP',
                                    style: FontApp.fontProximaW400.copyWith(
                                        fontSize: 10, color: ColorApp.grey300),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: ColorApp.white200,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  AssetsImage.marker,
                                  width: 15,
                                ),
                              ),
                            ],
                          ),
                          VerticalSizedBox(height: 20),
                          CustomTextField(
                            controller: nameDepan,
                            hintText: 'Masukkan nama depan anda',
                            label: 'Nama Depan',
                          ),
                          VerticalSizedBox(height: 20),
                          CustomTextField(
                            controller: nameBelakang,
                            hintText: 'Masukkan nama belakang anda',
                            label: 'Nama Belakang',
                          ),
                          VerticalSizedBox(height: 20),
                          CustomTextField(
                            controller: email,
                            hintText: 'Masukkan email anda',
                            label: 'Email',
                          ),
                          VerticalSizedBox(height: 20),
                          CustomTextField(
                            controller: noTelpon,
                            hintText: 'Masukkan nama No. telpon anda',
                            label: 'No. Telpon',
                          ),
                          VerticalSizedBox(height: 20),
                          CustomTextField(
                            controller: noTelpon,
                            hintText: 'Masukkan nama No. KTP anda',
                            label: 'No. KTP',
                          ),
                          VerticalSizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AssetsImage.info, width: 16),
                              HorizontalSizedBox(width: 10),
                              Text(
                                'Pastikan profile anda terisi dengan benar,\n data pribadi anda terjamin keamanannya',
                                style: FontApp.fontGilroyW400.copyWith(
                                    fontSize: 12, color: ColorApp.grey200),
                              ),
                            ],
                          ),
                          VerticalSizedBox(height: 20),
                          CustomButton(
                            height: 36,
                            onPressed: () {},
                            text: 'Simpan',
                            icon: Icon(
                              Icons.save,
                              color: ColorApp.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(child: Text('Tidak ada')),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 107,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetsImage.banner2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Ingin mendapatkan \nupdate dari kami ?',
                      style: FontApp.fontGilroyW700
                          .copyWith(fontSize: 16, color: ColorApp.white100),
                    ),
                    Row(
                      children: [
                        Text(
                          'Dapatkan \nnotifikasi',
                          style: FontApp.fontProximaW400
                              .copyWith(fontSize: 14, color: ColorApp.white100),
                        ),
                        HorizontalSizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward,
                          color: ColorApp.white,
                          size: 20,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
