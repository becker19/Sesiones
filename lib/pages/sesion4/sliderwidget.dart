import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 20;

  double _cupernum = 0;
  double _inicio = 0;
  double _fin = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Slider'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoSlider(
                min: 0.0,
                max: 100.0,
                value: _cupernum,
                activeColor: CupertinoColors.activeGreen,
                thumbColor: CupertinoColors.systemPink,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    _cupernum = value;
                  });
                },
              ),
            ),
            RangeSlider(
              min: 0.0,
              max: 100.0,
              activeColor: Colors.amber,
              inactiveColor: Colors.black,
              values: RangeValues(_inicio, _fin),
              onChanged: (values) {
                setState(() {
                  _inicio = values.start;
                  _fin = values.end;
                });
              },
            ),
            RangeSlider(
              min: 0.0,
              max: 100.0,
              divisions: 10,
              labels: RangeLabels(
                _inicio.round().toString(),
                _fin.round().toString(),
              ),
              values: RangeValues(_inicio, _fin),
              onChanged: (values) {
                setState(() {
                  _inicio = values.start;
                  _fin = values.end;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
