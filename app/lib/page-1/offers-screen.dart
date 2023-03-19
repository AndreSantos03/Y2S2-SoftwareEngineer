import 'package:flutter/material.dart';
import 'package:myapp/page-1/map-screen.dart';
import 'package:myapp/page-1/user-screen.dart';
import 'package:myapp/utils.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // offersscreen541 (18:49)
        padding: EdgeInsets.fromLTRB(35 * fem, 22 * fem, 29 * fem, 26 * fem),
        // default -> 35*fem, 22*fem, 29*fem, 26*fem
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
              // Grupo Texto
              margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 45 * fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            Center(
              // aquipodesencontrartodasaspropo (21:86)
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 52 * fem),
                constraints: BoxConstraints(
                  maxWidth: 315 * fem,
                ),
                child: Text(
                  'Aqui podes encontrar todas as propostas de emprego!\nClica em qualquer uma para saber mais.',
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
              // frameJWR (21:154)
              margin:
                  EdgeInsets.fromLTRB(14 * fem, 0 * fem, 20 * fem, 48 * fem),
              width: double.infinity,
              height: 501 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // inputescolaridadeBq7 (21:127)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 21 * fem),
                    padding: EdgeInsets.fromLTRB(
                        19 * fem, 20 * fem, 17 * fem, 20 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xd3fffcfc),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // itoperationsleadmfredcloudtech (21:129)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 68 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 201 * fem,
                          ),
                        ),
                        Container(
                          // vectortN9 (21:124)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: 27 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-Kt1.png',
                            width: 27 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // inputescolaridadeB6M (21:135)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    padding: EdgeInsets.fromLTRB(
                        23 * fem, 19 * fem, 17 * fem, 21 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xd3fffcfc),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // softwareengineeroutsystemgrits (21:137)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 8 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 257 * fem,
                          ),
                          child: Text(
                            'Software Engineer - Outsystem\nGRiT Solutions',
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
                          // vectorrbo (21:132)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: 27 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-SQM.png',
                            width: 27 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // inputescolaridade957 (21:151)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 21 * fem),
                    padding: EdgeInsets.fromLTRB(
                        18 * fem, 19 * fem, 17 * fem, 21 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xd3fffcfc),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // juniordataengineermfnoesisport (21:153)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 49 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 221 * fem,
                          ),
                          child: Text(
                            'Junior Data Engineer (m/f)\nNoesis Portugal',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: const Color(0x93050505),
                            ),
                          ),
                        ),
                        Container(
                          // vector4bP (21:148)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: 27 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-kXP.png',
                            width: 27 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // inputescolaridadeN6H (21:143)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 21 * fem),
                    padding: EdgeInsets.fromLTRB(
                        19 * fem, 20 * fem, 17 * fem, 20 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xd3fffcfc),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // outsystemsdevelopermfgrowinEuB (21:145)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 32 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 237 * fem,
                          ),
                          child: Text(
                            'OutSystems Developer (m/f)\nGrowin',
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
                          // vectorVq7 (21:140)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: 27 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-55f.png',
                            width: 27 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // inputescolaridadePvV (21:156)
                    padding: EdgeInsets.fromLTRB(
                        23 * fem, 19 * fem, 17 * fem, 21 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xd3fffcfc),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // bioraclemfdecodet6Z (21:158)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 143 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 122 * fem,
                          ),
                          child: Text(
                            'BI Oracle (m/f)\nDecode',
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
                          // vector9YH (21:159)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: 27 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector.png',
                            width: 27 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // autogroupnbwvEZj (4ZVqNerdYGZxR6qcY4NbWV)
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // ButtonOffers (21:80)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 32 * fem, 0 * fem),
                    // 66*fem -> overflow
                    width: 88 * fem,
                    height: 88 * fem,
                    child: Image.asset(
                      'assets/page-1/images/buttonoffers-q49.png',
                      width: 88 * fem,
                      height: 88 * fem,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MapScreen()),
                      );
                    },
                    child: Container(
                      // buttonmaprb7 (21:74)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 96 * fem, 6 * fem),
                      width: 52 * fem,
                      height: 52 * fem,
                      child: Image.asset(
                        'assets/page-1/images/buttonmap.png',
                        width: 52 * fem,
                        height: 52 * fem,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserScreen()),
                      );
                    },
                    child: SizedBox(
                      // ButtonUser (21:66)
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
