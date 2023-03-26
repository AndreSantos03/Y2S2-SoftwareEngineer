import 'package:flutter/material.dart';
import 'package:myapp/views/widgets/district.dart';
import 'offers-screen.dart';
import 'user-screen.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    List<int> districtIdList = [1,3,4,5,6,8,10,11,12,13,14,16,17,18,20,21,22];
    return SizedBox(      width: double.infinity,
      child: Container(
        // mapscreenH89 (1:2)
        padding: EdgeInsets.fromLTRB(0 * fem, 22 * fem, 0 * fem, 26 * fem),
        // default -> 0*fem, 22*fem, 0*fem, 26*fem
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xaf6389eb),
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0x33e11313), Color(0x33e11313)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         /* ListView.builder(
          itemCount: districtIdList.length,
            itemBuilder: (BuildContext context, int index) {
              return DistrictImage(districtId: districtIdList[index]);
            },
          ),*/
            Container(
              // autogroup5kkun6q (VjgBq1xHhWzeczZMEe5kku)
              margin:
                  EdgeInsets.fromLTRB(48 * fem, 0 * fem, 29 * fem, 19 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            Container(
              // autogroupskhxh9F (VjgCCqfG3kBW5ADq7CSKhX)
              margin:
                  EdgeInsets.fromLTRB(18 * fem, 0 * fem, 11 * fem, 47 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // buttonfilterngV (4:48)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 318 * fem, 1 * fem),
                    width: 36 * fem,
                    height: 36 * fem,
                    child: Image.asset(
                      'assets/page-1/images/buttonfilter.png',
                      width: 36 * fem,
                      height: 36 * fem,
                    ),
                  ),
                  Container(
                    // buttonsettings4e1 (17:3)
                    width: 47 * fem,
                    height: 47 * fem,
                    child: Image.asset(
                      'assets/page-1/images/buttonsettings.png',
                      width: 47 * fem,
                      height: 47 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // imagemapNPo (4:39)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 68 * fem),
              width: 556 * fem,
              height: 601 * fem,
              child: Image.asset(
                'assets/page-1/images/portugal.png',
                width: 556 * fem,
                height: 601 * fem,
              ),
            ),
            Container(
              // autogroupd37jf81 (VjgCLvG8aFridCuyeyd37j)
              margin: EdgeInsets.fromLTRB(36 * fem, 0 * fem, 29 * fem, 0 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // ButtonOffers
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 60 * fem, 0 * fem),
                    // 87*fem was giving overflow
                    child: TextButton(
                      onPressed: () {
                        // Changes to the other screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OffersScreen()),
                        );
                      },
                      child: SizedBox(
                        width: 64 * fem, //64 * fem
                        height: 64 * fem, //64 * fem
                        child: Image.asset(
                          'assets/page-1/images/buttonoffers.png',
                          width: 64 * fem,
                          height: 64 * fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // buttonmapcSZ (17:7)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 78 * fem, 0 * fem),
                    width: 72 * fem,
                    height: 72 * fem,
                    child: Image.asset(
                      'assets/page-1/images/buttonmap.png',
                      width: 72 * fem,
                      height: 72 * fem,
                    ),
                  ),
                  TextButton(
                    // buttonuser6Mj (4:42)
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserScreen()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 64 * fem,
                      height: 64 * fem,
                      child: Image.asset(
                        'assets/page-1/images/buttonuser.png',
                        width: 64 * fem,
                        height: 64 * fem,
                      ),
                    ),
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
