import 'package:flutter/material.dart';
import 'package:myapp/page-1/map-screen.dart';
import 'package:myapp/utils.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // userscreenxrh (9:55)
        padding: EdgeInsets.fromLTRB(36 * fem, 22 * fem, 29 * fem, 26 * fem),
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
            Container(
              // autogrouptqmtxVK (4ZVp42PeU6ZvZHBTDUTQmT)
              margin:
                  EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 248 * fem),
              height: 30 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // FDX (18:27)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 218 * fem, 0 * fem),
                    child: Text(
                      '13:40',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // iconsignalWfF (18:32)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 4.07 * fem, 0 * fem),
                    width: 26.04 * fem,
                    height: 26.04 * fem,
                    child: Image.asset(
                      'assets/page-1/images/iconsignal-qGq.png',
                      width: 26.04 * fem,
                      height: 26.04 * fem,
                    ),
                  ),
                  Container(
                    // autogroup27qybAu (4ZVpDMTSFVUP1X3zcR27Qy)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 2.44 * fem, 0 * fem, 6.4 * fem),
                    width: 52.89 * fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // icon5gJ5K (18:28)
                          left: 0 * fem,
                          top: 1.6274719238 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 31.74 * fem,
                              height: 17.63 * fem,
                              child: Image.asset(
                                'assets/page-1/images/icon5g.png',
                                width: 31.74 * fem,
                                height: 17.63 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // iconbatteryAWq (18:35)
                          left: 31.7352905273 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 21.16 * fem,
                              height: 21.16 * fem,
                              child: Image.asset(
                                'assets/page-1/images/iconbattery-92V.png',
                                width: 21.16 * fem,
                                height: 21.16 * fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              // atualizaastuascompetnciasparau (18:25)
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 7 * fem, 41 * fem),
                constraints: BoxConstraints(
                  maxWidth: 318 * fem,
                ),
                child: Text(
                  'Atualiza as tuas competências\npara usá-las como filtro!',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              // inputescolaridadePH7 (18:40)
              margin:
                  EdgeInsets.fromLTRB(13 * fem, 0 * fem, 20 * fem, 15 * fem),
              padding:
                  EdgeInsets.fromLTRB(23 * fem, 15 * fem, 23 * fem, 16 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xd3fffcfc),
                borderRadius: BorderRadius.circular(100 * fem),
              ),
              child: Text(
                'Nivel de escolaridade...',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  color: Color(0x93050505),
                ),
              ),
            ),
            Container(
              // inputescolaridadeyWD (18:47)
              margin:
                  EdgeInsets.fromLTRB(12 * fem, 0 * fem, 21 * fem, 15 * fem),
              width: double.infinity,
              height: 55 * fem,
              child: Container(
                // inputescolaridadehBK (18:41)
                padding:
                    EdgeInsets.fromLTRB(23 * fem, 15 * fem, 23 * fem, 16 * fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xd3fffcfc),
                  borderRadius: BorderRadius.circular(100 * fem),
                ),
                child: Text(
                  'Anos de experiência...',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    color: Color(0x93050505),
                  ),
                ),
              ),
            ),
            Container(
              // inputescolaridadek9b (18:48)
              margin:
                  EdgeInsets.fromLTRB(13 * fem, 0 * fem, 20 * fem, 227 * fem),
              width: double.infinity,
              height: 55 * fem,
              child: Container(
                // inputescolaridadefXT (18:44)
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xd3fffcfc),
                  borderRadius: BorderRadius.circular(100 * fem),
                ),
                child: Center(
                  child: Text(
                    'Linguagens de programação...',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: const Color(0x93050505),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              // autogroupqzzzJaR (4ZVpPmKkirNiB8DH1RqzzZ)
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // buttonofferspof (17:4)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 89 * fem, 0 * fem),
                    width: 64 * fem,
                    height: 64 * fem,
                    child: Image.asset(
                      'assets/page-1/images/buttonoffers-4SR.png',
                      width: 64 * fem,
                      height: 64 * fem,
                    ),
                  ),
                  TextButton(
                    // ButtonMap (4:42)
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MapScreen()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 77 * fem, 6 * fem),
                      width: 52 * fem,
                      height: 52 * fem,
                      child: Image.asset(
                        'assets/page-1/images/buttonmap-CRT.png',
                        width: 52 * fem,
                        height: 52 * fem,
                      ),
                    ),
                  ),
                  SizedBox(
                    // buttonuserzrZ (17:19)
                    width: 83 * fem,
                    height: 83 * fem,
                    child: Image.asset(
                      'assets/page-1/images/buttonuser-dWM.png',
                      width: 83 * fem,
                      height: 83 * fem,
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
