import 'package:component/utils/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonSlideComponent extends StatelessWidget {
  /* Example how to call ButtonSlideComponent
  GetBuilder<Controller>(
          init: Controller(),
          builder: (_c) => Column(
            children: [
              ButtonSlideComponent(
                  value: _c.val,
                  onChanged: (value) {
                    _c.val = value;
                    _c.update();
                  }),
              Text(_c.val.toStringAsFixed(1))
            ],
          ),
      )
  */
  double width;
  double value;
  double max;
  double min;
  bool isDisableSlide;
  @required
  void Function(double) onChanged;
  void Function(double) onChangedStart;
  void Function(double) onChangedEnd;

  ButtonSlideComponent(
      {this.width = double.infinity,
      this.value,
      this.max = 100,
      this.min = 0,
      this.isDisableSlide = false,
      this.onChanged,
      this.onChangedStart,
      this.onChangedEnd});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        child: CupertinoSlider(
          value: value != null ? value : 0,
          min: min,
          max: max,
          onChanged: isDisableSlide ? null : onChanged,
          onChangeStart: isDisableSlide ? null : onChangedStart,
          onChangeEnd: isDisableSlide ? null : onChangedEnd,
          activeColor: isDisableSlide ? Color.fromRGBO(112, 112, 112, 0.3) : PRIMARY_COLOR,
          thumbColor: isDisableSlide ? Colors.black45 : Colors.white,
        ),
      ),
    );
  }
}
