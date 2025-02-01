import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CandidatesdetailsWidget extends StatefulWidget {
  const CandidatesdetailsWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CandidatesdetailsWidgetState createState() =>
      _CandidatesdetailsWidgetState();
}

class _CandidatesdetailsWidgetState extends State<CandidatesdetailsWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator CandidatesdetailsWidget - FRAME

    return Container(
        width: 390,
        height: 836,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
            top: 776,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color.fromRGBO(239, 241, 245, 1),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 14),
                    child: const Text(
                      'Back to List',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(28, 27, 31, 1),
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        height: 1.375,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 736,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Manifesto/Policy Details... (scrollable content)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(28, 27, 31, 1),
                          fontFamily: 'Inter',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 696,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'John Doe - President',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(28, 27, 31, 1),
                          fontFamily: 'Inter',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 472,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 390,
                        height: 212,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(239, 241, 245, 1),
                        )),
                  ],
                ),
              )),
          Positioned(
              top: 428,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Candidate Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(28, 27, 31, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.6),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 404,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[],
                ),
              )),
          Positioned(
              top: 338,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                              color: Color.fromRGBO(239, 241, 245, 1),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 14),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'View Details',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(28, 27, 31, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.375),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 276,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: Color.fromRGBO(239, 241, 245, 1),
                        )),
                    const SizedBox(width: 12),
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Robert Green - Secretary',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(28, 27, 31, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Profile Picture',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(160, 156, 171, 1),
                                fontFamily: 'Inter',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.4285714285714286),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 264,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[],
                ),
              )),
          Positioned(
              top: 198,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                              color: Color.fromRGBO(239, 241, 245, 1),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 14),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'View Details',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(28, 27, 31, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.375),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 136,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: Color.fromRGBO(239, 241, 245, 1),
                        )),
                    const SizedBox(width: 12),
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Alice Brown - Secretary',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(28, 27, 31, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Profile Picture',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(160, 156, 171, 1),
                                fontFamily: 'Inter',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.4285714285714286),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 92,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Secretary',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(28, 27, 31, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.6),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 68,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[],
                ),
              )),
          Positioned(
              top: 2,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                              color: Color.fromRGBO(239, 241, 245, 1),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 14),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'View Details',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(28, 27, 31, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.375),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 340.0000305175781,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: Color.fromRGBO(239, 241, 245, 1),
                        )),
                    const SizedBox(width: 12),
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Jane Smith - President',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(28, 27, 31, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Profile Picture',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(160, 156, 171, 1),
                                fontFamily: 'Inter',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.4285714285714286),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 274.0000305175781,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                              color: Color.fromRGBO(239, 241, 245, 1),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 14),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'View Details',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(28, 27, 31, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.375),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 262.0000305175781,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[],
                ),
              )),
          Positioned(
              top: 200.00003051757812,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: Color.fromRGBO(239, 241, 245, 1),
                        )),
                    const SizedBox(width: 12),
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'John Doe - President',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(28, 27, 31, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Profile Picture',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(160, 156, 171, 1),
                                fontFamily: 'Inter',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.4285714285714286),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 156.00003051757812,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'President',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(28, 27, 31, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.6),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 60.000030517578125,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Candidates for Election',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(28, 27, 31, 1),
                          fontFamily: 'Inter',
                          fontSize: 32,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.25),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(27, 38, 59, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  '12:30',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4285714285714286),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 272),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 4.00000524520874),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    width: 18.666690826416016,
                                    height: 16.00002098083496,
                                    decoration: const BoxDecoration(),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                        top: 2,
                                        left: 2.00000262260437,
                                        child: SvgPicture.asset(
                                          'assets/images/wifi.svg',
                                          semanticsLabel: 'wifi',
                                        ),
                                      ),
                                    ])),
                                const SizedBox(width: 2),
                                Container(
                                    width: 16.00002098083496,
                                    height: 16.00002098083496,
                                    decoration: const BoxDecoration(),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                        top: 2.274801015853882,
                                        left: -1.0573064088821411,
                                        child: SvgPicture.asset(
                                            'assets/images/data.svg',
                                            semanticsLabel: 'data'),
                                      ),
                                    ])),
                                const SizedBox(width: 2),
                                Container(
                                    width: 13.33335018157959,
                                    height: 16.00002098083496,
                                    decoration: const BoxDecoration(),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                        top: 1.333335041999817,
                                        left: 2.666670083999634,
                                        child: SvgPicture.asset(
                                            'assets/images/stroke.svg',
                                            semanticsLabel: 'stroke'),
                                      ),
                                      const Positioned(
                                          top: 2.666656494140625,
                                          left: 3.33349609375,
                                          child: SizedBox.shrink()),
                                    ])),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 766,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.30000001192092896),
                        offset: Offset(0, -0.33000001311302185),
                        blurRadius: 0)
                  ],
                  color: Color.fromRGBO(27, 38, 59, 1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 13, vertical: 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 24,
                                              height: 24,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    160, 156, 171, 1),
                                              ),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                  top: 1.9999401569366455,
                                                  left: 2.9992785453796387,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                              ]))),
                                    ])),
                                const SizedBox(height: 8),
                                const Text(
                                  'Home',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 83),
                          Container(
                            decoration: const BoxDecoration(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 13, vertical: 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 24,
                                              height: 24,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                  top: 2.9999990463256836,
                                                  left: 2.9999990463256836,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                              ]))),
                                    ])),
                                const SizedBox(height: 8),
                                const Text(
                                  'Voting',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(160, 156, 171, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 83),
                          Container(
                            decoration: const BoxDecoration(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 13, vertical: 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 24,
                                              height: 24,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                  top: 4,
                                                  left: 5,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                              ]))),
                                    ])),
                                const SizedBox(height: 8),
                                const Text(
                                  'Results',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(160, 156, 171, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 83),
                          Container(
                            decoration: const BoxDecoration(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 13, vertical: 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 24,
                                              height: 24,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                  top: 5,
                                                  left: 5,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                              ]))),
                                    ])),
                                const SizedBox(height: 8),
                                const Text(
                                  'Profile',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(160, 156, 171, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 822,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(27, 38, 59, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 108,
                        height: 4,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                          color: Color.fromRGBO(28, 27, 31, 1),
                        )),
                  ],
                ),
              )),
        ]));
  }
}
