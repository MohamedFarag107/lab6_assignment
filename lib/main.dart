import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBall());
}

class BasketBall extends StatefulWidget {
  const BasketBall({Key? key}) : super(key: key);

  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  void addPoints(int points, String team) {
    if (team == 'A') {
      setState(() {
        teamAPoints += points;
      });
    } else {
      setState(() {
        teamBPoints += points;
      });
    }
  }

  void reset() {
    setState(() {
      teamAPoints = 0;
      teamBPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Basketball Score Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text('Team A', style: TextStyle(fontSize: 30)),
                        Text('$teamAPoints',
                            style: const TextStyle(fontSize: 100)),
                        Column(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(120, 40),
                                ),
                                onPressed: () => addPoints(1, 'A'),
                                child: const Text('+1 Point',
                                    style: TextStyle(fontSize: 20))),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(120, 40),
                                ),
                                onPressed: () => addPoints(2, 'A'),
                                child: const Text('+2 Points',
                                    style: TextStyle(fontSize: 20))),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(120, 40),
                                ),
                                onPressed: () => addPoints(3, 'A'),
                                child: const Text('+3 Points',
                                    style: TextStyle(fontSize: 20))),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        thickness: 2,
                      ),
                    ),
                    Column(
                      children: [
                        const Text('Team B', style: TextStyle(fontSize: 30)),
                        Text('$teamBPoints',
                            style: const TextStyle(fontSize: 100)),
                        Column(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(120, 40),
                                ),
                                onPressed: () => addPoints(1, 'B'),
                                child: const Text('+1 Point',
                                    style: TextStyle(fontSize: 20))),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(120, 40),
                                ),
                                onPressed: () => addPoints(2, 'B'),
                                child: const Text('+2 Points',
                                    style: TextStyle(fontSize: 20))),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(120, 40),
                                ),
                                onPressed: () => addPoints(3, 'B'),
                                child: const Text('+3 Points',
                                    style: TextStyle(fontSize: 20))),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // reset button
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      backgroundColor: Colors.grey[300],
                    ),
                    onPressed: () => reset(),
                    child: const Text('Reset',
                        style: TextStyle(color: Colors.black)))
              ],
            )));
  }
}
