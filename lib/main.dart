import 'package:flutter/material.dart';

void main() {
  runApp(BascketBallPoints());
}

class BascketBallPoints extends StatefulWidget {

  @override
  State<BascketBallPoints> createState() => _BascketBallPointsState();
}

class _BascketBallPointsState extends State<BascketBallPoints> {
  int pointCounterTeamA = 0;

  int pointCounterTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.amber,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$pointCounterTeamA',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pointCounterTeamA ++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                          )),
                      SizedBox(height: 8),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pointCounterTeamA = pointCounterTeamA+2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber)),
                      SizedBox(height: 8),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pointCounterTeamA = pointCounterTeamA+3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber)),
                      SizedBox(height: 8),
                    ],
                  ),
                  Container(
                    height: 300,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$pointCounterTeamB',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pointCounterTeamB++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                          )),
                      SizedBox(height: 8),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pointCounterTeamB = pointCounterTeamB+2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber)),
                      SizedBox(height: 8),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pointCounterTeamB = pointCounterTeamB+3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber)),
                      SizedBox(height: 8),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      pointCounterTeamA = 0;
                      pointCounterTeamB = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
