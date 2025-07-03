import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TickFocus()));
}

class PlayPauseButton extends StatefulWidget {
  const PlayPauseButton({super.key});

  @override
  State<PlayPauseButton> createState() => _PlayPauseButtonState();
}

class _PlayPauseButtonState extends State<PlayPauseButton> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isPlaying = !isPlaying;
          });
        },
        icon: Icon(
          isPlaying
              ? Icons.pause_circle_outline_rounded
              : Icons.play_circle_outline_rounded,
          color: Colors.white,
          size: 40,
        ));
  }
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
  int breakTime = 5;
  int longBreakTime = 15;
  int longBreakAfter = 2;
  @override
  Widget build(BuildContext context) {
    double clockPadWidth = MediaQuery.of(context).size.width * 0.25;
    double settingsPadWidth = MediaQuery.of(context).size.width * 0.75;
    return ConstrainedBox(
      constraints: BoxConstraints(
          minHeight: 195.0,
          minWidth: 570.0,
          maxHeight: double.infinity,
          maxWidth: double.infinity),
      child: Scaffold(
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
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    title: Text('Timer Settings'),
                    backgroundColor: Colors.pink,
                    collapsedBackgroundColor: Colors.green,
                    childrenPadding: EdgeInsets.only(left: 10.0, right: 10.0),
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
                                    if (focusTime > 20) {
                                      focusTime = focusTime - 5;
                                    } else {
                                      focusTime = 20;
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
                                onPressed: () {
                                  setState(() {
                                    if (breakTime > 5) {
                                      breakTime = breakTime - 1;
                                    } else {
                                      breakTime = 5;
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
                                onPressed: () {
                                  setState(() {
                                    if (breakTime < 10) {
                                      breakTime = breakTime + 1;
                                    } else {
                                      breakTime = 10;
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
                                onPressed: () {
                                  setState(() {
                                    if (longBreakTime > 10) {
                                      longBreakTime = longBreakTime - 5;
                                    } else {
                                      longBreakTime = 10;
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
                                onPressed: () {
                                  setState(() {
                                    if (longBreakTime < 30) {
                                      longBreakTime = longBreakTime + 5;
                                    } else {
                                      longBreakTime = 30;
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
                                onPressed: () {
                                  setState(() {
                                    if (longBreakAfter > 2) {
                                      longBreakAfter = longBreakAfter - 1;
                                    } else {
                                      longBreakAfter = 2;
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
                                onPressed: () {
                                  setState(() {
                                    if (longBreakAfter < 5) {
                                      longBreakAfter = longBreakAfter + 1;
                                    } else {
                                      longBreakAfter = 5;
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
                              side:
                                  BorderSide(color: Colors.black54, width: 1.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            onPressed: () {},
                            child: Text('OK')),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(
                      Icons.access_alarms_rounded,
                      color: Colors.black,
                    ),
                    title: Text('Alarm Tone'),
                    children: [
                      //Focus Time////////////////////////////////////////////////
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Search from local'),
                            Spacer(),
                            SizedBox(
                              height: buttonHeight,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(2.0),
                                    alignment: Alignment.center,
                                    backgroundColor: Colors.white,
                                    elevation: 0.0,
                                    side: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                  ),
                                  onPressed: () {
                                    double screenWidth =
                                        settingsPadWidth / 0.75;
                                    double screenHeight =
                                        MediaQuery.of(context).size.height;
                                    print('The screen width is $screenWidth');
                                    print('The screen height is $screenHeight');
                                  },
                                  child: Text(
                                    'Browse',
                                    style: TextStyle(color: Colors.black54),
                                  )),
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
                              side:
                                  BorderSide(color: Colors.black54, width: 1.0),
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
                        PlayPauseButton(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.stop_circle_outlined,
                              color: Colors.white,
                              size: 40.0,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
