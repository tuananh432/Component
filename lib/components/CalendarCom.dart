import 'package:component/widgets/CalendarDateComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarController extends GetxController {
  DateTime time;
  List<DateTime> listTime;
}

class CalendarCom extends StatelessWidget {
  CalendarController c = Get.put(CalendarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Back'),
        leading: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
      ),
      body: GetBuilder<CalendarController>(
        init: CalendarController(),
        builder: (c) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CalendarDateComponent().dateRangePicker(
                  context: context,
                  child: Text("show"),
                  onValue: (value) {
                    c.listTime = value;
                    c.update();
                  }),
              Text('Select time: ' + c.listTime.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
