import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculatorApp());
  //0000
  //1111
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: BMICalculatorScreen(),
    );
  }
}

class BMICalculatorScreen extends StatelessWidget {
  //684
  final ValueNotifier<int> height = ValueNotifier<int>(174);
  final ValueNotifier<int> weight = ValueNotifier<int>(60);
  final ValueNotifier<int> age = ValueNotifier<int>(29);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // الجنس
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GenderCard(icon: Icons.male, label: 'MALE'),
                ),
                Expanded(
                  child: GenderCard(icon: Icons.female, label: 'FEMALE'),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                  ),
                  ValueListenableBuilder<int>(
                    valueListenable: height,
                    builder: (context, currentHeight, child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            currentHeight.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Slider(
                    value: height.value.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      height.value = newValue.round();
                    },
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CounterCard(
                    label: 'WEIGHT',
                    valueNotifier: weight,
                  ),
                ),
                Expanded(
                  child: CounterCard(
                    label: 'AGE',
                    valueNotifier: age,
                  ),
                ),
              ],
            ),
          ),

          Container(
              width: double.infinity,
              height: 80,
              color: Color(0xFFEB1555),
              child: Text('CALUATE'))
        ],
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const GenderCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80.0, color: Colors.white),
          SizedBox(height: 15.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          ),
        ],
      ),
    );
  }
}

class CounterCard extends StatelessWidget {
  final String label;
  final ValueNotifier<int> valueNotifier;

  const CounterCard({required this.label, required this.valueNotifier});
//jjjhhhhhhhjjjjjj
//kjhgyftrewaesrdtyfghj
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          ),
          ValueListenableBuilder<int>(
            valueListenable: valueNotifier,
            builder: (context, value, child) {
              return Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  valueNotifier.value--;
                },
                heroTag: '${label}-',
                mini: true,
                backgroundColor: Color(0xFF4C4F5E),
                child: Icon(Icons.remove, color: Colors.white),
              ),
              SizedBox(width: 10.0),
              FloatingActionButton(
                onPressed: () {
                  valueNotifier.value++;
                },
                heroTag: '${label}+',
                mini: true,
                backgroundColor: Color(0xFF4C4F5E),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
