import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$teamAScore',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black, // Text color
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold), // Text style
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(6.0), // Rounded corners
                            ),
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamAScore++;
                            });
                          },
                          child: const Text('Add 1 point'),
                        ),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black, // Text color
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold), // Text style
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(6.0), // Rounded corners
                            ),
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamAScore += 2;
                            });
                          },
                          child: const Text('Add 2 point'),
                        ),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black, // Text color
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold), // Text style
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(6.0), // Rounded corners
                            ),
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamAScore += 3;
                            });
                          },
                          child: const Text('Add 3 point'),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      endIndent: 50,
                      indent: 50,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$teamBScore',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black, // Text color
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold), // Text style
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(6.0), // Rounded corners
                            ),
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBScore++;
                            });
                          },
                          child: const Text('Add 1 point'),
                        ),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black, // Text color
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold), // Text style
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(6.0), // Rounded corners
                            ),
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBScore += 2;
                            });
                          },
                          child: const Text('Add 2 point'),
                        ),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black, // Text color
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold), // Text style
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(6.0), // Rounded corners
                            ),
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBScore += 3;
                            });
                          },
                          child: const Text('Add 3 point'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.black, // Text color
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold), // Text style
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0), // Rounded corners
                  ),
                  maximumSize: const Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamAScore = 0;
                    teamBScore = 0;
                  });
                },
                child: const Text('Reset Score'),
              ),
            ],
          )),
    );
  }
}
