import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:vascomm/common/widgets/button.dart';
import 'package:vascomm/common/widgets/text_field.dart';
import 'package:vascomm/core/assets/assets_image.dart';
import 'package:vascomm/core/style/color_app.dart';
import 'package:vascomm/core/style/fonts.dart';
import 'package:vascomm/core/style/sized_box.dart';
import 'package:vascomm/src/home/presentation/widgets/drawer.dart';

import '../widgets/tabbar_item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static const String routeHomePage = 'home-page-route';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? thisIndex;

  TextEditingController search = TextEditingController();

  List<String> categories = [
    "All Product",
    "Layanan Kesehatan",
    "Alat Kesehatan"
  ];

  Widget listCategories(String value, int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            thisIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17),
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: thisIndex == index ? ColorApp.navyBlack : ColorApp.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: 0)
              ]),
          child: Center(
            child: Text(
              categories[index],
              style: FontApp.fontProximaW700.copyWith(
                  fontSize: 12,
                  color:
                      thisIndex == index ? ColorApp.white : ColorApp.navyBlack),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorApp.white,
      drawer: Theme(
        data: Theme.of(context).copyWith(
          // Set the transparency here
          canvasColor: Colors.transparent,
        ),
        child: DrawerWidget()
      ),
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: const Border(
                    top: BorderSide(color: Colors.transparent),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(-2, 30),
                        blurRadius: 15,
                        spreadRadius: 0)
                  ]),
              // padding: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              // alignment: Alignment.bottomCenter,
              height: 170,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      AssetsImage.banner1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Solusi, ',
                              style: FontApp.fontGilroyW600.copyWith(
                                  fontSize: 18, color: ColorApp.navyBlack),
                            ),
                            Text(
                              'Kesehatan Anda',
                              style: FontApp.fontGilroyW800.copyWith(
                                  fontSize: 18, color: ColorApp.navyBlack),
                            ),
                          ],
                        ),
                        VerticalSizedBox(height: 5),
                        Text(
                          'Update informasi seputar kesehatan \nsemua bisa disini !, ',
                          style: FontApp.fontProximaW400.copyWith(
                            fontSize: 12,
                            color: ColorApp.grey400,
                          ),
                        ),
                        VerticalSizedBox(height: 5),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorApp.navyBlack,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                minimumSize: const Size(110, 32)),
                            onPressed: () {},
                            child: Text(
                              'Selengkapnya',
                              style: FontApp.fontGilroyW600.copyWith(
                                  fontSize: 12, color: ColorApp.white),
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                    top: -9,
                    right: 0,
                    child: Image.asset(
                      AssetsImage.date,
                      height: 130,
                      width: 130,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: const Border(
                    top: BorderSide(color: Colors.transparent),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(0, 50),
                        blurRadius: 30,
                        spreadRadius: 0)
                  ]),
              // padding: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              // alignment: Alignment.bottomCenter,
              height: 180,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: const Border(
                        top: BorderSide(color: Colors.transparent),
                      ),
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Layanan Khusus',
                              style: FontApp.fontGilroyW600.copyWith(
                                  fontSize: 18, color: ColorApp.navyBlack),
                            ),
                          ],
                        ),
                        VerticalSizedBox(height: 5),
                        Text(
                          'Tes Covid 19, Cegah Corona \nSedini Mungkin',
                          style: FontApp.fontProximaW400.copyWith(
                            fontSize: 12,
                            color: ColorApp.grey400,
                          ),
                        ),
                        VerticalSizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Daftar Tes',
                              style: FontApp.fontGilroyW700.copyWith(
                                  fontSize: 14, color: ColorApp.navyBlack),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: ColorApp.navyBlack,
                              size: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: -9,
                    right: 0,
                    child: Image.asset(
                      AssetsImage.medicine,
                      height: 130,
                      width: 130,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: const Border(
                    top: BorderSide(color: Colors.transparent),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(0, 50),
                        blurRadius: 30,
                        spreadRadius: 0)
                  ]),
              // padding: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              // alignment: Alignment.bottomCenter,
              height: 150,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: const Border(
                        top: BorderSide(color: Colors.transparent),
                      ),
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AssetsImage.search,
                        height: 80,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Track Pemeriksaan',
                              style: FontApp.fontGilroyW600.copyWith(
                                  fontSize: 18, color: ColorApp.navyBlack),
                            ),
                            VerticalSizedBox(height: 5),
                            Text(
                              'Kamu dapat mengecek progress \npemeriksaanmu disini',
                              style: FontApp.fontProximaW400.copyWith(
                                fontSize: 12,
                                color: ColorApp.grey400,
                              ),
                            ),
                            VerticalSizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Track',
                                  style: FontApp.fontGilroyW700.copyWith(
                                      fontSize: 14, color: ColorApp.navyBlack),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: ColorApp.navyBlack,
                                  size: 20,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  // width: ,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ColorApp.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    AssetsImage.filter,
                    height: 40,
                    // width: 40,
                  ),
                ),
                HorizontalSizedBox(width: 30),
                Expanded(
                    child: CustomTextField(
                  controller: search,
                  hintText: 'Search',
                  suffixIcon: Icon(
                    Icons.search,
                    color: ColorApp.navyBlack,
                  ),
                ))
              ],
            ),
            VerticalSizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 60,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: categories
                      .asMap()
                      .entries
                      .map(
                        (MapEntry map) => listCategories(map.value, map.key),
                      )
                      .toList()),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    height: 210,
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              AssetsImage.star,
                              width: 20,
                              height: 20,
                            ),
                            HorizontalSizedBox(width: 6),
                            Text('5',
                                style: FontApp.fontProximaW600.copyWith(
                                    fontSize: 16, color: ColorApp.grey50))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetsImage.image,
                              width: 80,
                              height: 80,
                            ),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Suntik Steril',
                              style: FontApp.fontProximaW600
                                  .copyWith(fontSize: 14),
                            )),
                        Row(
                          children: [
                            Text(
                              'Rp. 10.000',
                              style: FontApp.fontProximaW600
                                  .copyWith(fontSize: 14)
                                  .copyWith(color: ColorApp.orange),
                            ),
                            HorizontalSizedBox(width: 14),
                            //  Text('Rp. 10.000',style: FontApp.fontProximaW600.copyWith(fontSize: 14).copyWith(color: ColorApp.white),),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: ColorApp.green400,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'Ready Stock',
                                    style: FontApp.fontProximaW400.copyWith(
                                        fontSize: 10,
                                        color: ColorApp.greenBlack),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                HorizontalSizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    height: 210,
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              AssetsImage.star,
                              width: 20,
                              height: 20,
                            ),
                            HorizontalSizedBox(width: 6),
                            Text('5',
                                style: FontApp.fontProximaW600.copyWith(
                                    fontSize: 16, color: ColorApp.grey50))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetsImage.image,
                              width: 80,
                              height: 80,
                            ),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Suntik Steril',
                              style: FontApp.fontProximaW600
                                  .copyWith(fontSize: 14),
                            )),
                        Row(
                          children: [
                            Text(
                              'Rp. 10.000',
                              style: FontApp.fontProximaW600
                                  .copyWith(fontSize: 14)
                                  .copyWith(color: ColorApp.orange),
                            ),
                            HorizontalSizedBox(width: 14),
                            //  Text('Rp. 10.000',style: FontApp.fontProximaW600.copyWith(fontSize: 14).copyWith(color: ColorApp.white),),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: ColorApp.green400,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'Ready Stock',
                                    style: FontApp.fontProximaW400.copyWith(
                                        fontSize: 10,
                                        color: ColorApp.greenBlack),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            VerticalSizedBox(height: 20),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 40,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: ColorApp.blueLight,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      labelColor: ColorApp.navyBlack,
                      unselectedLabelColor: ColorApp.navyBlack,
                      tabs: [
                        TabItem(title: 'Satuan'),
                        TabItem(title: 'Paket Pemeriksaan'),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(
                      children: [
                        ListView.builder(
                          itemCount: 2 + 1,
                          itemBuilder: (BuildContext context, int index) {
                            return (index != 2)
                                ? Container(
                                    margin: EdgeInsets.only(top: 30),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: ColorApp.white),
                                    height: 149,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
                                                    style: FontApp
                                                        .fontProximaW600
                                                        .copyWith(
                                                            fontSize: 14,
                                                            color: ColorApp
                                                                .navyBlack),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10),
                                                    child: Text(
                                                      'Rp. 1.000.000',
                                                      style: FontApp
                                                          .fontProximaW600
                                                          .copyWith(
                                                              fontSize: 14,
                                                              color: ColorApp
                                                                  .orange),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        AssetsImage.hospital,
                                                        height: 12,
                                                      ),
                                                      HorizontalSizedBox(
                                                          width: 10),
                                                      Text(
                                                        'Lenmarch Surabaya',
                                                        style: FontApp
                                                            .fontProximaW600
                                                            .copyWith(
                                                                fontSize: 14,
                                                                color: ColorApp
                                                                    .grey200),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        AssetsImage.marker,
                                                        height: 12,
                                                      ),
                                                      HorizontalSizedBox(
                                                          width: 10),
                                                      Text(
                                                        'Dukuh Pakis, Surabaya',
                                                        style: FontApp
                                                            .fontProximaW400
                                                            .copyWith(
                                                                fontSize: 12,
                                                                color: ColorApp
                                                                    .grey50),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            HorizontalSizedBox(width: 20),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                height: 149,
                                                child: Image.asset(
                                                  AssetsImage.image2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                : Container(
                                    margin: EdgeInsets.only(top: 30),
                                    height: 107,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(AssetsImage.banner2),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Ingin mendapatkan \nupdate dari kami ?',
                                          style: FontApp.fontGilroyW700
                                              .copyWith(
                                                  fontSize: 16,
                                                  color: ColorApp.white100),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Dapatkan \nnotifikasi',
                                              style: FontApp.fontProximaW400
                                                  .copyWith(
                                                      fontSize: 14,
                                                      color: ColorApp.white100),
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
                                  );
                          },
                        ),
                        Center(child: Text('Tidak ada')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
