import 'package:component/utils/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;

class CalendarDateComponent {
  /* Example call widget CalendarDateComponent
        CalendarDateComponent().dateRangePicker(
            context: context,
            child: Text('Show DateRangePicker'),
            onValue: (value) {
            print(value);
            c.listTime = value;
            c.update();
        })
  */

  Widget dateRangePicker({context, Widget child, Function(List<DateTime>) onValue}) {
    return Theme(
      data: Theme.of(context).copyWith(
          accentColor: PRIMARY_COLOR,
          primaryColor: PRIMARY_COLOR,
          buttonTheme: ButtonThemeData(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                    background: Colors.white,
                    primary: PRIMARY_COLOR,
                    brightness: Brightness.light,
                  ))),
      child: Builder(
        builder: (context) => GestureDetector(
            onTap: () async {
              await DateRangePicker.showDatePicker(
                      context: context,
                      initialFirstDate: DateTime.now(),
                      initialLastDate: DateTime.now(),
                      firstDate: DateTime(1970),
                      lastDate: DateTime(DateTime.now().year + 5))
                  .then(onValue);
            },
            child: child),
      ),
    );
  }
}
