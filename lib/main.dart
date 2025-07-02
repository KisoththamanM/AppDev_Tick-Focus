import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TickFocus()));
}

class TickFocus extends StatefulWidget {
  const TickFocus({super.key});

  @override
  State<TickFocus> createState() => _TickFocusState();
}

class _TickFocusState extends State<TickFocus> {
  bool isExpanded = false;
  double buttonHeight = 25.0;
  double buttonWidth = 30.0;
  int focusTime = 25;
  int breakTime = 25;
  int longBreakTime = 25;
  int longBreakAfter = 2;
  @override
  Widget build(BuildContext context) {
    double clockPadWidth = MediaQuery.of(context).size.width * 0.25;
    double settingsPadWidth = MediaQuery.of(context).size.width * 0.75;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height,
            width: settingsPadWidth,
            color: Colors.white,
            child: ListView(
              children: [
                ExpansionTile(
                  title: Text('Timer Settings'),
                  children: [
                    //Focus Time////////////////////////////////////////////////
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Focus time'),
                          Spacer(),
                          SizedBox(
                            height: buttonHeight,
                            width: buttonWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(1.0),
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (focusTime > 0) {
                                    focusTime = focusTime - 5;
                                  } else {
                                    focusTime = 0;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.arrow_back_rounded,
                                size: 20.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 20.0,
                            alignment: Alignment.center,
                            height: buttonHeight,
                            child: Text('$focusTime'),
                          ),
                          SizedBox(width: 10.0),
                          SizedBox(
                            height: buttonHeight,
                            width: buttonWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(1.0),
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (focusTime < 60) {
                                    focusTime = focusTime + 5;
                                  } else {
                                    focusTime = 60;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                size: 20.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            width: 80.0,
                            child: Text('mins'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    //Break Time////////////////////////////////////////////////
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Break time'),
                          Spacer(),
                          SizedBox(
                            height: buttonHeight,
                            width: buttonWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(1.0),
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_back_rounded,
                                size: 20.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 20.0,
                            alignment: Alignment.center,
                            height: buttonHeight,
                            child: Text('$breakTime'),
                          ),
                          SizedBox(width: 10.0),
                          SizedBox(
                            height: buttonHeight,
                            width: buttonWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(1.0),
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                size: 20.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          SizedBox(
                            width: 80.0,
                            child: Text('mins'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    //Long Break Time///////////////////////////////////////////
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Long break time'),
                          Spacer(),
                          SizedBox(
                            height: buttonHeight,
                            width: buttonWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(1.0),
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_back_rounded,
                                size: 20.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 20.0,
                            alignment: Alignment.center,
                            height: buttonHeight,
                            child: Text('$longBreakTime'),
                          ),
                          SizedBox(width: 10.0),
                          SizedBox(
                            height: buttonHeight,
                            width: buttonWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(1.0),
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                size: 20.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          SizedBox(
                            width: 80.0,
                            child: Text('mins'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    //Long Break after//////////////////////////////////////////
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Long break after'),
                          Spacer(),
                          SizedBox(
                            height: buttonHeight,
                            width: buttonWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(1.0),
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_back_rounded,
                                size: 20.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 20.0,
                            alignment: Alignment.center,
                            height: buttonHeight,
                            child: Text('$longBreakAfter'),
                          ),
                          SizedBox(width: 10.0),
                          SizedBox(
                            height: buttonHeight,
                            width: buttonWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(1.0),
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                size: 20.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          SizedBox(
                            width: 80.0,
                            child: Text('Focuses'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    //OK button/////////////////////////////////////////////////
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(1.0),
                            alignment: Alignment.center,
                            backgroundColor: Colors.white,
                            elevation: 0.0,
                            side: BorderSide(color: Colors.black54, width: 1.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          onPressed: () {},
                          child: Text('OK')),
                    ),
                    SizedBox(height: 10.0),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: clockPadWidth,
            color: Color(0xFF3F3F3F),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: clockPadWidth - 20.0,
                  width: clockPadWidth - 20.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.circular(clockPadWidth - 20.0)),
                ),
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  width: clockPadWidth - 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border:
                                Border.all(color: Colors.white, width: 2.0)),
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border:
                                Border.all(color: Colors.white, width: 2.0)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
