import 'package:flutter/cupertino.dart';
import 'package:test_app/res/resources.dart';

extension AppContext on BuildContext {
  Resources get resources => Resources.of(this);
}
