import 'package:component/widgets/DialogComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogCom extends StatelessWidget {
  const DialogCom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Back'),
        leading: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () => DialogComponent().showAlert(
                  context: context,
                  title: "Dialog",
                  content: Text('Decription'),
                  confirm: () => print('ok')),
              child: const Text('Show Dialog'),
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () => DialogComponent().showAlert(
                  context: context,
                  title: "Dialog",
                  content: Text('Decription'),
                  confirm: () => print('ok'),
                  haveProgress: true,
                  hideCancelText: true),
              child: const Text(
                  'Show Dialog with progress and hide Cancel button'),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
