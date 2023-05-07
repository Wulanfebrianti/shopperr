import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryApp extends StatefulWidget {
  @override
  _HistoryAppState createState() => _HistoryAppState();
}
class _HistoryAppState extends State<HistoryApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                'Riwayat Histori',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search_rounded, size: 30, color: Colors.black),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: Icon(Icons.filter_list_alt, size: 30, color: Colors.black),
                  onPressed: () {
                  },
                ),
              ],
              // bottom: const TabBar(
              //   tabs: [
              //     Tab(text: 'Semua'),
              //     Tab(text: 'Pemasukan'),
              //     Tab(text: 'Pemasukan'),
              //   ],
              // ),
            ),
            body:  Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 110,
                      height: 36,
                      margin: const EdgeInsets.only(top: 20, left: 5, right: 0),
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.all(Radius.circular(10)),
                        color : Color.fromRGBO(247, 110, 98, 1),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(child: Text(
                            'Berlangsung',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ), left: 15, top: 9,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 36,
                      margin: const EdgeInsets.only(top: 20, left: 5, right: 0),
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.all(Radius.circular(10)),
                        color : Color.fromRGBO(238, 129, 116, 0.5),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(child: Text(
                            'Berhasil',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ), left: 30, top: 9,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 36,
                      margin: const EdgeInsets.only(top: 20, left: 2, right: 0),
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.all(Radius.circular(10)),
                        color : Color.fromRGBO(238, 129, 116, 0.5),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(child: Text(
                            'dibatalkan',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ), left: 22, top: 9,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 5),
                width: 380,
                height: 94,
                child: Stack(
                    children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 380,
                              height: 94,

                              child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 380,
                                            height: 94,
                                            decoration: BoxDecoration(
                                              borderRadius : BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10),
                                              ),
                                              color : Color.fromRGBO(255, 255, 255, 1),
                                            )
                                        )
                                    ),
                                    Positioned(
                                        top: 7,
                                        left: 9,
                                        child: Container(
                                            width: 111,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              borderRadius : BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10),
                                              ),
                                              color : Color.fromRGBO(232, 232, 232, 1),
                                            )
                                        )
                                    ),
                                    Positioned(
                                        top: 23,
                                        left: 41,
                                        child: Container(
                                            width: 49,
                                            height: 49,
                                            decoration: BoxDecoration(
                                              image : DecorationImage(
                                                  image: AssetImage('assets/images/Friedrice.png'),
                                                  fit: BoxFit.fitWidth
                                              ),
                                            )
                                        )
                                    ),
                                    Positioned(
                                        top: 17,
                                        left: 139,
                                        child: Text('Rusmart', textAlign: TextAlign.left, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 16,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1
                                        ),)
                                    ),
                                  ]
                              )
                          )
                      ),Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 380,
                              height: 94,

                              child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 380,
                                            height: 94,

                                            child: Stack(
                                                children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 380,
                                                          height: 94,
                                                          decoration: BoxDecoration(
                                                            borderRadius : BorderRadius.only(
                                                              topLeft: Radius.circular(10),
                                                              topRight: Radius.circular(10),
                                                              bottomLeft: Radius.circular(10),
                                                              bottomRight: Radius.circular(10),
                                                            ),
                                                            color : Color.fromRGBO(255, 255, 255, 1),
                                                          )
                                                      )
                                                  ),Positioned(
                                                      top: 7,
                                                      left: 9,
                                                      child: Container(
                                                          width: 111,
                                                          height: 80,
                                                          decoration: BoxDecoration(
                                                            borderRadius : BorderRadius.only(
                                                              topLeft: Radius.circular(10),
                                                              topRight: Radius.circular(10),
                                                              bottomLeft: Radius.circular(10),
                                                              bottomRight: Radius.circular(10),
                                                            ),
                                                            color : Color.fromRGBO(232, 232, 232, 1),
                                                          )
                                                      )
                                                  ),Positioned(
                                                      top: 23,
                                                      left: 41,
                                                      child: Container(
                                                          width: 49,
                                                          height: 49,
                                                          decoration: BoxDecoration(
                                                            image : DecorationImage(
                                                                image: AssetImage('assets/image/Friedrice.png'),
                                                                fit: BoxFit.fitWidth
                                                            ),
                                                          )
                                                      )
                                                  ),Positioned(
                                                      top: 17,
                                                      left: 139,
                                                      child: Text('Rusmart', textAlign: TextAlign.left, style: TextStyle(
                                                          color: Color.fromRGBO(0, 0, 0, 1),
                                                          fontFamily: 'Roboto',
                                                          fontSize: 16,
                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight: FontWeight.normal,
                                                          height: 1
                                                      ),)
                                                  ),Positioned(
                                                      top: 41,
                                                      left: 139,
                                                      child: Text('5 barang', textAlign: TextAlign.left, style: TextStyle(
                                                          color: Color.fromRGBO(78, 77, 77, 1),
                                                          fontFamily: 'Roboto',
                                                          fontSize: 13,
                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight: FontWeight.normal,
                                                          height: 1
                                                      ),)
                                                  ),
                                                ]
                                            )
                                        )
                                    ),
                                  ]
                              )
                          )
                      ),Positioned(
                          top: 15,
                          left: 260,
                          child: Container(
                              width: 80,
                              height: 18,

                              child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 80,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              borderRadius : BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10),
                                              ),
                                              color : Color.fromRGBO(255, 202, 165, 1),
                                            )
                                        )
                                    ),Positioned(
                                        top: 3,
                                        left: 21,
                                        child: Text('diproses', textAlign: TextAlign.left, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1
                                        ),)
                                    ),
                                  ]
                              )
                          )
                      ),Positioned(
                          top: 71,
                          left: 141,
                          child: Text('10 menit', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 10,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1
                          ),)
                      ),
                    ]
                )
            ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.only(right: 10, left: 5),
                    width: 380,
                    height: 94,

                    child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 380,
                                  height: 94,
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color : Color.fromRGBO(255, 255, 255, 1),
                                  )
                              )
                          ),Positioned(
                              top: 7,
                              left: 9,
                              child: Container(
                                  width: 111,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color : Color.fromRGBO(232, 232, 232, 1),
                                  )
                              )
                          ),Positioned(
                              top: 23,
                              left: 41,
                              child: Container(
                                  width: 49,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/Friedrice.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              )
                          ),Positioned(
                              top: 17,
                              left: 139,
                              child: Text('Rusmart', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 38,
                              left: 139,
                              child: Text('Nasi Goreng', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(232, 232, 232, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 13,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 380,
                                  height: 94,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 380,
                                                height: 94,
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(10),
                                                    topRight: Radius.circular(10),
                                                    bottomLeft: Radius.circular(10),
                                                    bottomRight: Radius.circular(10),
                                                  ),
                                                  color : Color.fromRGBO(255, 255, 255, 1),
                                                )
                                            )
                                        ),Positioned(
                                            top: 7,
                                            left: 9,
                                            child: Container(
                                                width: 111,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(10),
                                                    topRight: Radius.circular(10),
                                                    bottomLeft: Radius.circular(10),
                                                    bottomRight: Radius.circular(10),
                                                  ),
                                                  color : Color.fromRGBO(232, 232, 232, 1),
                                                )
                                            )
                                        ),Positioned(
                                            top: 23,
                                            left: 41,
                                            child: Container(
                                                width: 49,
                                                height: 49,
                                                decoration: BoxDecoration(
                                                  image : DecorationImage(
                                                      image: AssetImage('assets/image/Friedrice.png'),
                                                      fit: BoxFit.fitWidth
                                                  ),
                                                )
                                            )
                                        ),Positioned(
                                            top: 17,
                                            left: 139,
                                            child: Text('Rusmart', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 16,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 41,
                                            left: 139,
                                            child: Text('5 barang', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(78, 77, 77, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 13,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 71,
                              left: 140,
                              child: Text('5 menit', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 15,
                              left: 260,
                              child: Container(
                                  width: 80,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color : Color.fromRGBO(238, 129, 116, 0.5),
                                  )
                              )
                          ),Positioned(
                              top: 18,
                              left: 270,
                              child: Text('menuju lokasi', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),
                        ]
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 5),
                    width: 380,
                    height: 94,

                    child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 380,
                                  height: 94,
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color : Color.fromRGBO(255, 255, 255, 1),
                                  )
                              )
                          ),Positioned(
                              top: 7,
                              left: 9,
                              child: Container(
                                  width: 111,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color : Color.fromRGBO(232, 232, 232, 1),
                                  )
                              )
                          ),Positioned(
                              top: 23,
                              left: 41,
                              child: Container(
                                  width: 49,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/Friedrice.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              )
                          ),Positioned(
                              top: 17,
                              left: 139,
                              child: Text('Rusmart', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 38,
                              left: 139,
                              child: Text('Nasi Goreng', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(232, 232, 232, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 13,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 380,
                                  height: 94,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 380,
                                                height: 94,
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(10),
                                                    topRight: Radius.circular(10),
                                                    bottomLeft: Radius.circular(10),
                                                    bottomRight: Radius.circular(10),
                                                  ),
                                                  color : Color.fromRGBO(255, 255, 255, 1),
                                                )
                                            )
                                        ),Positioned(
                                            top: 7,
                                            left: 9,
                                            child: Container(
                                                width: 111,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(10),
                                                    topRight: Radius.circular(10),
                                                    bottomLeft: Radius.circular(10),
                                                    bottomRight: Radius.circular(10),
                                                  ),
                                                  color : Color.fromRGBO(232, 232, 232, 1),
                                                )
                                            )
                                        ),Positioned(
                                            top: 23,
                                            left: 41,
                                            child: Container(
                                                width: 49,
                                                height: 49,
                                                decoration: BoxDecoration(
                                                  image : DecorationImage(
                                                      image: AssetImage('assets/image/Friedrice.png'),
                                                      fit: BoxFit.fitWidth
                                                  ),
                                                )
                                            )
                                        ),Positioned(
                                            top: 17,
                                            left: 139,
                                            child: Text('Rusmart', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 16,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 41,
                                            left: 139,
                                            child: Text('5 barang', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(78, 77, 77, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 13,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 71,
                              left: 140,
                              child: Text('1 menit', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 15,
                              left: 260,
                              child: Container(
                                  width: 80,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color : Color.fromRGBO(255, 0, 15, 0.20000000298023224),
                                  )
                              )
                          ),Positioned(
                              top: 18,
                              left: 278,
                              child: Text('sudah tiba', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 63,
                              left: 210,
                              child: Container(
                                  width: 126,
                                  height: 20,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 126,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    topRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5),
                                                    bottomRight: Radius.circular(5),
                                                  ),
                                                  color : Color.fromRGBO(247, 110, 98, 1),
                                                )
                                            )
                                        ),Positioned(
                                            top: 3,
                                            left: 10,
                                            child: Text('Selesaikan pesanan', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(255, 255, 255, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 12,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ]
                    )
                )
              ],
            )
      ),
    );
  }
}
