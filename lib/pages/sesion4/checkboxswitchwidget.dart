import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheboxSwitchWidget extends StatefulWidget {
  const CheboxSwitchWidget({super.key});

  @override
  State<CheboxSwitchWidget> createState() => _CheboxSwitchWidgetState();
}

class _CheboxSwitchWidgetState extends State<CheboxSwitchWidget> {
  bool isSwitched = true;
  bool isChecked = false;
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Chebox & Switch'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              CupertinoSwitch(
                value: switchValue,
                activeColor: CupertinoColors.activeBlue,
                onChanged: (bool? value) {
                  setState(() {
                    switchValue = value ?? false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
