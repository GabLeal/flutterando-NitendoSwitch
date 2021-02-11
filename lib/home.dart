import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromRGBO(75, 80, 84, 1), Color.fromRGBO(39, 43, 46, 1)],
      )),
      child: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  height: height * 0.50,
                  child: console(width * 0.7, Colors.white, Colors.black)),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 189, 221, 1),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(80))),
                  height: height * 0.40,
                  width: width * 0.35,
                  child: borderSideLeft(),
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 95, 83, 1),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(80))),
                  height: height * 0.40,
                  width: width * 0.35,
                  child: borderSideRitght(),
                )),
            Positioned(
                bottom: 100,
                right: 126,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: width * 0.3,
                  height: width / 4 * 0.5,
                  // color: Colors.pink,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          dots(color: Color.fromRGBO(182, 235, 165, 1)),
                          dots(color: Color.fromRGBO(34, 35, 39, 1)),
                          dots(color: Color.fromRGBO(34, 35, 39, 1)),
                          dots(color: Color.fromRGBO(34, 35, 39, 1))
                        ],
                      ),
                      console(width / 4, Colors.black,
                          Color.fromRGBO(39, 43, 46, 1)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          dots(color: Color.fromRGBO(34, 35, 39, 1)),
                          dots(color: Color.fromRGBO(34, 35, 39, 1)),
                          dots(color: Color.fromRGBO(34, 35, 39, 1)),
                          dots(color: Color.fromRGBO(34, 35, 39, 1))
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget dots({Color color}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      height: 5,
      width: 5,
    );
  }

  Widget console(width, Color color1, Color color2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: color1,
                width: width * 0.04,
              ),
              color: color2,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(width * 0.13),
                  bottomLeft: Radius.circular(width * 0.13))),
          height: width * 0.5,
          width: width * 0.23,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: width * 0.07),
                child: Container(
                  decoration: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.circular(width * 0.5)),
                  height: width * 0.1,
                  width: width * 0.1,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: width * 0.03,
        ),
        Container(
          decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(width * 0.13),
                  bottomRight: Radius.circular(width * 0.13))),
          height: width * 0.5,
          width: width * 0.215,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: width * 0.17),
                child: Container(
                  decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(width * 0.5)),
                  height: width * 0.1,
                  width: width * 0.1,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget circularButton({Widget child}) {
    return Container(
      padding: EdgeInsets.all(1.5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(123, 130, 135, 1),
              Color.fromRGBO(5, 15, 17, 1)
            ],
          )),
      height: 32,
      width: 32,
      child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(104, 109, 112, 1),
                  Color.fromRGBO(5, 15, 17, 1)
                ],
              )),
          height: 15,
          width: 15,
          child: child),
    );
  }

  Widget analogico() {
    return Container(
      height: 65,
      width: 65,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(104, 109, 112, 1),
            Color.fromRGBO(5, 15, 17, 1)
          ],
        ),
      ),
      child: Container(
        height: 60,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(104, 109, 112, 1),
              Color.fromRGBO(5, 15, 17, 1)
            ],
          ),
        ),
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.5)),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(103, 106, 111, 1),
                Color.fromRGBO(36, 38, 37, 1)
              ],
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.5),
            //     spreadRadius: 5,
            //     blurRadius: 7,
            //     offset: Offset(0, 3), // changes position of shadow
            //   ),
            // ],
          ),
        ),
      ),
    );
  }

  Widget groupButtonRight() {
    return Container(
        width: 90,
        height: 100,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: circularButton(
                  child: Center(
                      child: Text(
                    'X',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  )),
                )),
            Align(
                alignment: Alignment.centerRight,
                child: circularButton(
                  child: Center(
                      child: Text(
                    'A',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  )),
                )),
            Align(
                alignment: Alignment.centerLeft,
                child: circularButton(
                  child: Center(
                      child: Text(
                    'Y',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  )),
                )),
            Align(
                alignment: Alignment.bottomCenter,
                child: circularButton(
                  child: Center(
                      child: Text(
                    'B',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  )),
                )),
          ],
        ));
  }

  Widget groupButtonLeft() {
    return Container(
        width: 90,
        height: 100,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: circularButton(
                    child: Center(
                  child: Icon(
                    Icons.arrow_drop_up,
                    size: 30,
                  ),
                ))),
            Align(
                alignment: Alignment.centerLeft,
                child: circularButton(
                    child: Center(
                  child: Icon(
                    Icons.arrow_left,
                    size: 30,
                  ),
                ))),
            Align(
                alignment: Alignment.centerRight,
                child: circularButton(
                    child: Center(
                  child: Icon(
                    Icons.arrow_right,
                    size: 30,
                  ),
                ))),
            Align(
                alignment: Alignment.bottomCenter,
                child: circularButton(
                    child: Center(
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                ))),
          ],
        ));
  }

  Widget borderSideLeft() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(75, 80, 84, 1),
                  Color.fromRGBO(39, 43, 46, 1)
                ],
              )),
          height: 8,
          width: 22,
        ),
        Positioned(
            right: 10,
            bottom: 60,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(15), child: analogico()),
                groupButtonLeft(),
              ],
            )),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.all(15),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(123, 130, 135, 1),
                          Color.fromRGBO(50, 65, 68, 1)
                        ])),
                child: Container(
                    // padding: EdgeInsets.all(3),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(74, 73, 78, 1),
                              Color.fromRGBO(82, 81, 87, 1)
                            ])),
                    child: Center(
                        child: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black)))))),
      ],
    );
  }

  Widget borderSideRitght() {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 10,
          child: Container(
            margin: EdgeInsets.only(left: 10, top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(75, 80, 84, 1),
                    Color.fromRGBO(39, 43, 46, 1)
                  ],
                )),
            height: 8,
            width: 22,
          ),
        ),
        Positioned(
          top: -7,
          right: 17,
          child: Container(
            margin: EdgeInsets.only(left: 10, top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(75, 80, 84, 1),
                    Color.fromRGBO(39, 43, 46, 1)
                  ],
                )),
            height: 22,
            width: 8,
          ),
        ),
        Positioned(
            left: 10,
            bottom: 60,
            child: Column(
              children: [
                groupButtonRight(),
                Padding(padding: EdgeInsets.all(15), child: analogico()),
              ],
            )),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(51, 56, 60, 1),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                        color: Color.fromRGBO(143, 137, 137, 1), width: 3)),
                padding: EdgeInsets.all(3),
                child: Icon(Icons.home),
              ),
            ))
      ],
    );
  }
}
