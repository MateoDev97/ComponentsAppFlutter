import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {
  const AlertView({super.key});

  void displayAlert(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: const Text('Alert'),
            content: const Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Sample content'),
              SizedBox(height: 20),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'))
            ],
          );
        });
  }

  void showOtherAlert(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Alert cupertino'),
            content: const Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Sample content'),
              SizedBox(height: 20),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => displayAlert(context),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Show Alert',
                  style: TextStyle(fontSize: 18),
                ),
              )),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () => showOtherAlert(context),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Show Other Alert',
                  style: TextStyle(fontSize: 18),
                ),
              ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
